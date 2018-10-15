from django.db import models

class Usuario (models.Model):
    nombres = models.CharField(max_length=45, default='')
    apellidos = models.CharField(max_length=45, default='')
    email = models.CharField(max_length=100, default='')
    


