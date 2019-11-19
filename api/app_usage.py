import os
from collections import defaultdict, namedtuple

import pandas as pd
from sklearn.externals import joblib
from sklearn.metrics import mean_absolute_error


def get_model_count_from_dir(model_dir=None):
    if model_dir is None:
        model_dir = 'models'

    count = 0

    try:
        count = int(sorted(os.listdir(model_dir), key=lambda x: int(x))[-1])
    except FileNotFoundError:
        pass
    finally:
        return count


def pad_century_to_date(data, year='19', century='20'):
    year_mask = data.str.contains(f'[0-9]*-[0-9]*-{year}')

    if year_mask.any():
        mask = data[year_mask].str.split('-', expand=True)

        mask.iloc[:, -1] = century + year
        mask = mask.iloc[:, 0].str.cat(mask[mask.columns[1:]], sep='-')

        data[year_mask] = mask

    return data


def multiple_linear_regression(name, x, y, tolerance, test_split=0.3):
    import statsmodels.api as sm

    if len(x) != 1:
        x_train, y_train, x_test, y_test = train_test_split(x, y, test_set=test_split)
    else:
        x_train = x_test = x
        y_train = y_test = y

    model_ = sm.OLS(y_train, x_train)
    lr = model_.fit()

    pred = lr.predict(x_test)

    acc = accuracy(y_test, pred, tolerance)

    return name, acc, lr


def train_test_split(x, y, test_set=0.3):
    if len(x) != len(y):
        raise ValueError('X and y must be same dimesnion')

    train_set = int(len(x) * (1 - test_set))
    return x[:train_set], y[:train_set], x[train_set:], y[train_set:]


def accuracy(actual, pred, tolerance):
    t = mean_absolute_error(actual - tolerance, pred)
    t1 = mean_absolute_error(actual + tolerance, pred)

    return (t + t1) / 2
    # return mean_absolute_error(actual, pred)


def to_minutes(data):
    return data.dt.hour * 60 + data.dt.minute + (data.dt.second / 60)


def convert_tolerance_minutes(args):
    if args.hours:
        tolerance = args.tolerance * 60
    elif args.seconds:
        tolerance = args.tolerance / 60
    else:
        tolerance = args.tolerance

    return tolerance


def predict(model, x=None):
    pred = None
    if x is not None:
        pred = model.predict(x)
    else:
        pred = model.predict()

    return pred


def model(data, test_split):
    total_minutes = 1440
    tolerance = 60 / 1440

    model_info = namedtuple('model', ['error', 'model', 'tolerance', 'y_max', 'test_split',
                                      'train_split'])

    model_count = get_model_count_from_dir()
    model_path = f'models/{model_count + 1}'
    os.makedirs(model_path)


    response = []
    data_plot = defaultdict(list)
    for ind, df in data.groupby(by=['w_name']):
        name = df['w_name'].iloc[0]
        y = df.start
        print(df.columns)
        cols = set(['gender_female', 'gender_male', 'location_home',
                    'location_office', 'location_other'])
        missing_col = list(cols - set(df.columns.tolist()))

        for m_col in missing_col:
            df[m_col] = 0

        x = df[['gender_female', 'gender_male', 'location_home',
                'location_office', 'location_other']]
        y_max = y.max()
        y = y / total_minutes  # one day have 1440 minutes
        name, error, model = multiple_linear_regression(name, x, y, tolerance, test_split=test_split)
        model.y_max = y_max
        joblib.dump(model, os.path.join(model_path, f'{name}.model'))

        current_model = model_info(error=error, model=name, tolerance=tolerance, y_max=y_max,
                                   test_split=test_split, train_split=1 - test_split)

        print(current_model)
        data_plot['name'].append(name)
        data_plot['error'].append(error)

        pd.DataFrame(data_plot).to_csv(os.path.join(model_path, 'data.csv'), mode='a', header=False)

        pred = model.predict()[0] * 1440

        print('pred', pred)
        if 0 < pred <= 1440:
            response.append({'name': name, 'time': pred, })
        elif pred > 1440:
            response.append({'name': name, 'time': 'no usage time found for current day'})

    return response


def preprocess(data):
    data['w_date'] = pad_century_to_date(data['w_date'].copy())

    data['open_time'] = pd.to_datetime(data['w_date'] + ' ' + data['open_time'], format='%d-%m-%Y %H:%M')
    data['close_time'] = pd.to_datetime(data['w_date'] + ' ' + data['close_time'], format='%d-%m-%Y %H:%M')


    data = pd.get_dummies(data, columns=['gender', 'location'])

    data.sort_values(by='open_time', inplace=True)
    data.reset_index(drop=True, inplace=True)

    data['open_time_minutes'] = to_minutes(data['open_time'])
    data['close_time_minutes'] = to_minutes(data['close_time'])

    return data


def main(data):
    data = pd.DataFrame(data, columns=['w_name', 'w_date', 'open_time', 'close_time', 'latitude',
                                       'longitude', 'location', 'gender'])
    data = preprocess(data)
    data['name'] = data['w_name']
    data['start'] = data['open_time_minutes']
    data['end'] = data['close_time_minutes']

    data['duration'] = data.end - data.start
    total_minutes = 1440  # minutes
    tolerance = 60 / total_minutes  # minutes
    response = model(data, test_split=0.3)
    return response


