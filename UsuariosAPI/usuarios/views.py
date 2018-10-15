##from django.shortcuts import render
from rest_framework import generics
from .models import Usuario
from .serializers import  UsuarioSerializer
from django.shortcuts import get_object_or_404

class UsuarioList (generics.ListCreateAPIView):
    queryset = Usuario.objects.all()
    serializer_class = UsuarioSerializer

    def get_object (self):
        queryset = self.get_queryset()
        obj = get_object_or_404(
            queryset,
            pk = self.kwargs['pk'],
        )
        return obj
