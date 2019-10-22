from .models import MatchedPattern
from . import app_usage
from django.http import JsonResponse


def sort(data):
    points_to_remove = []
    points = []
    for idx, point in  enumerate(data):
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

def predict(request,app_name, user_id):
    if app_name == 'all':
        user = MatchedPattern.objects.filter(user_id=user_id)
    else:
        user = MatchedPattern.objects.filter(user_id=user_id, w_name__iexact=app_name)

    user = list(user.values_list('w_name', 'w_date', 'open_time', 'close_time'))
    data = app_usage.main(user)
    data = to_hour(data)
    return JsonResponse(data, safe=False)

