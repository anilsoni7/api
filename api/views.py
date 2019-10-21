from .models import MatchedPattern
from . import app_usage
from django.http import JsonResponse


def predict(request,app_name, user_id):
    if app_name == 'all':
        user = MatchedPattern.objects.filter(user_id=user_id)
    else:
        user = MatchedPattern.objects.filter(user_id=user_id, w_name__iexact=app_name)

    user = list(user.values_list('w_name', 'w_date', 'open_time', 'close_time'))
    return JsonResponse(app_usage.main(user), safe=False)
