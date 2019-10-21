from django.http import HttpResponse


def index(request):
    return HttpResponse('build the following url.  api/predict/{application name}/{user_id}', )
