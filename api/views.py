from .models import *
from . import app_usage
from django.http import JsonResponse
from . import lstm


def sort(data):
    points_to_remove = []
    points = []
    for idx, point in enumerate(data):
        if isinstance(point['time'], str):
            points_to_remove.append(idx)
    points_to_remove = sorted(points_to_remove, reverse=True)

    for idx in points_to_remove:
        points.append(data.pop(idx))

    return sorted(data, key=lambda x: x['time']) + points


def to_hour(data):
    data = sort(data)
    data_with_hour = []

    for point in data:
        if not isinstance(point['time'], str):
            hour = int(point['time'] // 60)
            minute = int(point['time'] % 60)

            data_with_hour.append({'name': point['name'], 'time': f'{hour}:{minute}'})
        else:
            data_with_hour.append(point)

    return data_with_hour


def predict(request, gender, week, app_name, user_id, split):
    if split not in (20, 30, 40):
        return JsonResponse({'error': 'invalid split data'})
    split = split / 100
    db_table = {
        'male': {
            'week1': MatchedPatternLocationMaleWeek1,
            'week2': MatchedPatternLocationMaleWeek2,
            'week3': MatchedPatternLocationMaleWeek3,
            'week4': MatchedPatternLocationMaleWeek4,
            'week5': MatchedPatternLocationMaleWeek5,
            'week6': MatchedPatternLocationMaleWeek6
        },
        'female': {
            'week1': MatchedPatternLocationFemaleWeek1,
            'week2': MatchedPatternLocationFemaleWeek1,
            'week3': MatchedPatternLocationFemaleWeek1,
            'week4': MatchedPatternLocationFemaleWeek1,
            'week5': MatchedPatternLocationFemaleWeek1,
            'week6': MatchedPatternLocationFemaleWeek1
        }
    }

    if app_name == 'all':
        user = db_table.get(gender).get(week).objects.filter(user_id=user_id)
    else:
        user = db_table.get(gender).get(week).objects.filter(user_id=user_id, w_name__iexact=app_name)

    cols = ['w_name', 'w_date', 'open_time', 'close_time']
    # if week not in ('week1',):
    # cols = ['name', 'date', 'open_time', 'close_time']

    user = list(user.values_list(*cols))
    # print(user)
    data, error_rate = lstm.main(user, split)
    data = to_hour(data)

    # pprint.pprint(data)
    return JsonResponse({'data': data, 'error': error_rate}, safe=False)


def lstm_view(request, app_name, user_id, split):

    if split not in (20, 30, 40):
        return JsonResponse({'error': 'invalid split data'})
    split = split / 100

    if app_name == "all":
        user = DailyTrackActualLocation.objects.filter(user_id=user_id)
    else:
        user = DailyTrackActualLocation.objects.filter(user_id=user_id, name__iexact=app_name)

    user = list(user.values_list('name', 'date', 'open_time', 'close_time'))

    data = lstm.main(user, split)
    data = to_hour(data)
    return JsonResponse(data, safe=False)
