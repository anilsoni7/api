import os
from collections import defaultdict, namedtuple

import numpy as np
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


def linear_regression(name, x, y, tolerance):
    from sklearn.linear_model import LinearRegression

    if len(x) != 1:
        x_train, y_train, x_test, y_test = train_test_split(x, y)
    else:
        x_train = x_test = x
        y_train = y_test = y

    lr = LinearRegression(n_jobs=-1)
    lr.fit(x_train, y_train)

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


def in_seconds(data):
    return data.dt.hour * 3600 + data.dt.minute * 60 + data.dt.second


def in_minutes(data):
    return data.dt.hour * 60 + data.dt.minute + (data.dt.second / 60)


def convert_tolerance_minutes(args):
    if args.hours:
        tolerance = args.tolerance * 60
    elif args.seconds:
        tolerance = args.tolerance / 60
    else:
        tolerance = args.tolerance

    return tolerance


def predict(model, data):
    x = model.x_max + 1
    pred = model.predict([[x]])
    return pred.reshape(-1)[0]


def main(data):

    data = pd.DataFrame(data, columns=['name', 'date', 'open', 'close'])

    data['start'] = pd.to_datetime(data['date'] + ' ' + data['open'])
    data['end'] = pd.to_datetime(data['date'] + ' ' + data['close'])
    data['duration'] = data.end - data.start
    tolerance = 60  # minutes

    model_info = namedtuple('model', ['error', 'model', 'tolerance', 'y_max', 'x_max'])

    model_count = get_model_count_from_dir()
    model_path = f'models/{model_count + 1}'
    os.makedirs(model_path)

    data_plot = defaultdict(list)
    total_minutes = 1440 # minutes
    # data['name'] = data['w_name']
    response = []
    if not os.path.exists('data.csv'):
        pd.DataFrame(columns=['name', 'error']).to_csv('data.csv')
    for ind, df in data.groupby(by=['name']):
        name = df.name.iloc[0]
        y = in_minutes(df.start)
        x = list(range(len(y)))
        y = np.asarray(y).reshape(-1, 1)
        x = np.asarray(x).reshape(-1, 1)
        y_max = y.max()
        x_max = x.shape[0]
        y = y / total_minutes  # one day have 1440 minutes

        tolerance = tolerance / total_minutes
        name, error, model = linear_regression(name, x, y, tolerance)
        model.x_max = x_max
        model.y_max = y_max
        joblib.dump(model, os.path.join(model_path, f'{name}.model'))

        current_model = model_info(error=error, model=name, tolerance=tolerance, y_max=y_max, x_max=x_max)
        print(model.__dict__)

        data_plot['name'].append(name)
        data_plot['error'].append(error)

        print(data_plot)

        print(y)
        pd.DataFrame(data_plot).to_csv(os.path.join(model_path, 'data.csv'), mode='a', header=False)

        pred = predict(model, data)
        if pred > 0 and pred < 1440:
            response.append({'name':name ,'opentime':pred})
        else:
            response.append({'name': name, 'opentime': 'error'})

    return response
