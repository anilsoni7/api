from django.urls import path
from .views import predict

urlpatterns = [
    path('predict/<str:app_name>/<int:user_id>/', view=predict)
]
