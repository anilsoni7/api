from django.urls import path
from .views import predict, lstm_view

urlpatterns = [
    # gender : male|female,
    # week: week1 | week2
    path('predict/<str:gender>/<str:week>/<str:app_name>/<int:user_id>/<int:split>/<str:error>', view=predict),
    path('predict/<str:app_name>/<int:user_id>/<int:split>', view=lstm_view)
]
