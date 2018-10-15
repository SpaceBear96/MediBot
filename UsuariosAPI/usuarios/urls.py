from django.urls import path
from usuarios.views import *

urlpatterns = [
    path('usuarios/', UsuarioList.as_view(), name='usuarios')
]