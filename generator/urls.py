from django.urls import path
from .views import models, models_info, create_opinion, opinion_detail,opinions, delete_opinion

app_name = 'modelos'

urlpatterns = [
    path('', models, name='models'),
    path('<int:carro_id>', models_info, name='modelos_info'),
    path('opinions', opinions, name='opinions'),
    path('opinions/create', create_opinion, name='create_opinion'),
    path('opinions/<int:opinion_id>', opinion_detail, name='opinion_detail'),
    path('opinions/<int:opinion_id>/delete', delete_opinion, name='delete_opinion'),
]
        