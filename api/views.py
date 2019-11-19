from .models import (MatchedPattern, MatchedPatternFemaleWeek1,
                     MatchedPatternFemaleWeek2, MatchedPatternMaleWeek1,
                     MatchedPatternMaleWeek2)
from . import app_usage
from django.http import JsonResponse


def predict(request, gender, week, app_name, user_id):

    db_table = {
        'male': {
            'week1': MatchedPatternMaleWeek1,
            'week2': MatchedPatternMaleWeek2
        },
        'female': {
            'week1': MatchedPatternFemaleWeek1,
            'week2': MatchedPatternFemaleWeek2
        }
    }

    if app_name == 'all':
        user = db_table.get(gender).get(week).objects.filter(user_id=user_id)
    else:
        user = db_table.get(gender).get(week).objects.filter(user_id=user_id, w_name__iexact=app_name)

    user = list(user.values_list('w_name', 'w_date', 'open_time', 'close_time', 'latitude',
                                 'longitude', 'location', 'gender'))

    return JsonResponse(app_usage.main(user), safe=False)
