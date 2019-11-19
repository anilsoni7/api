from django.urls import path
from .views import predict

urlpatterns = [
    # gender : male|female,
    # week: week1 | week2
    path('predict/<str:gender>/<str:week>/<str:app_name>/<int:user_id>/', view=predict)
]
