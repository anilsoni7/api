import os
from collections import defaultdict

import numpy as np
import pandas as pd
from tensorflow.keras import Sequential
from tensorflow.keras.layers import LSTM, Dense
import pprint


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


def pad_century_to_date(data, year='20', century='20'):
    year_mask = data.str.contains(f'[0-9]*-[0-9]*-{year}')

    if year_mask.any():
        mask = data[year_mask].str.split('-', expand=True)

        mask.iloc[:, -1] = century + year
        mask = mask.iloc[:, 0].str.cat(mask[mask.columns[1:]], sep='-')

        data[year_mask] = mask

    return data


def to_datetime(date, time):
    return pd.to_datetime(date + " " + time)


def in_minute(data):
    return data.dt.hour * 60 + data.dt.minute


def create_dataset(start_in_minutes):
    prep_dataset = zip(start_in_minutes[:-1], start_in_minutes[1:])
    X, Y = [], []
    for x, y in prep_dataset:
        X.append(x)
        Y.append(y)
    return np.array(X), np.array(Y)


def preprocess(start):
    minutes = in_minute(start)
    minutes /= 1440 # normalize the start
    return minutes


def predict(model, data, steps=1):
    pred = []
    p = model.predict([[[[data]]]])
    pred.append(float(p.flatten()[0]))
    for step in range(steps-1):
        p = model.predict([[[pred[-1]]]])
        pred.append(float(p.flatten()[0]))

    pred = [p * 1440 for p in pred]
    return pred


def create_train_model(x, y, epochs=97, batch_size=1,
                       lstm_units=7, test_split=0.3):

    model = Sequential()
    model.add(LSTM(lstm_units, 'relu', dropout=0.3, input_shape=(1, 1)))
    model.add(Dense(1, 'sigmoid'))
    model.compile(loss='mean_squared_error', optimizer='adam', metrics=['acc'])
    history = model.fit(x, y, epochs=epochs, batch_size=batch_size,
                        validation_split=test_split)

    loss = history.history['loss']
    val_loss = history.history['val_loss']
    return model, loss, val_loss, history


def main(data, split):
    data = pd.DataFrame(data, columns=['name', 'date', 'open', 'close'])

    data['start'] = to_datetime(data['date'], data['open'])

    data.sort_values(by='start', inplace=True)

    groupped_data = data.groupby(by=['name'])

    model_count = get_model_count_from_dir()
    model_path = f'models/{model_count + 1}'
    os.makedirs(model_path)
    # pd.DataFrame(
    #     columns=['name', 'train_loss', 'val_loss', 'accuracy', 'val_accuracy']
    # ).to_csv(os.path.join(model_path, 'data.csv'), index=False)

    response = []
    # data_plot = defaultdict(list)
    for idx, d in groupped_data:
        name = d.name.iloc[0]

        start_in_minutes = preprocess(d.start)
        if start_in_minutes.shape[0] == 1:
            start_in_minutes = start_in_minutes.repeat(5)
        x, y = create_dataset(start_in_minutes.values)
        print('dataset size', x.shape)

        if x.ndim < 1:
            print(f'didnt got data for {idx}')
            continue
        x = x[:, None, None]

        print(f'training model for {idx}')
        model, loss, val_loss, history = create_train_model(x, y, epochs=1, test_split=split)

        # data_plot['name'].append(name)
        # data_plot['train_loss'].append(loss[0])
        # data_plot['val_loss'].append(val_loss[0])
        # data_plot['accuracy'].append(abs(1 - loss[0]))
        # data_plot['val_accuracy'].append(abs(1 - val_loss[0]))
        # data_plot.append({
        #     'name': name,
        #     'train_loss': loss[0],
        #     'val_loss': val_loss[0],
        #     'accuracy': abs(1 - loss[0]),
        #     'val_accuracy': abs(1 - val_loss[0])
        # })
        # pd.DataFrame(data_plot).to_csv(os.path.join(model_path, 'data.csv'), mode='a', header=False)

        pred = predict(model, float(y[-1]), steps=1)

        if not any([p < 0 or p >= 1440 for p in pred]):
            response.append({'name': name, 'time': pred[0]})
        elif pred > 1440:
            response.append({'name': name, 'time': 'no usage time found for current day'})
    del data, groupped_data, model, loss, val_loss, history, pred
    pprint.pprint(f'Data plot for split: {split}')
    # pprint.pprint(pd.DataFrame(data_plot).values.tolist())

    # return response, pd.DataFrame(data_plot).values.tolist()
    return response
