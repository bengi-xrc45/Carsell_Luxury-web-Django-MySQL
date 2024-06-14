from django.db import models
from django.contrib.auth.models import User

class Carro(models.Model):
    TRANSMISION_CHOICES = [
        ('manual', 'Manual'), 
        ('automatico', 'Automático'),
    ]
    COMBUSTIBLE_CHOICES = [
        ('electrico', 'Eléctrico'),
        ('gasolina', 'Gasolina'),
        ('diesel', 'Diésel'),
        ('hibrido', 'Híbrido'),
    ]
    TIPO_CHOICES = [
        ('lujo', 'Lujo'),
        ('variado', 'Variado'),
    ]
    id = models.AutoField(primary_key=True)
    marca = models.CharField(max_length=50)
    modelo = models.CharField(max_length=100)
    motor = models.CharField(max_length=50)
    cilindros = models.CharField(max_length=50)
    valvulas = models.CharField(max_length=20)
    potencia = models.CharField(max_length=50)
    kilometraje= models.IntegerField()
    año = models.IntegerField()
    precio = models.IntegerField()
    descripcion = models.TextField()
    tipo = models.CharField(max_length=50, choices=TIPO_CHOICES)
    color = models.CharField(max_length=50)
    image = models.ImageField(upload_to='generator/images/', null=True)
    fecha_publicacion =  models.DateTimeField(auto_now_add=True)
    num_puertas = models.IntegerField()
    transmision = models.CharField(max_length=50, choices=TRANSMISION_CHOICES)
    num_asientos = models.IntegerField()
    combustible = models.CharField(max_length=50, choices=COMBUSTIBLE_CHOICES)
    def __str__(self):
        return self.marca + ' ' + self.modelo
    class Meta:
        db_table = 'Carro'

class ImagenCarro(models.Model):
    carro = models.ForeignKey(Carro, related_name='imagenes', on_delete=models.CASCADE)
    image = models.ImageField(upload_to='generator/images/', null=True, blank=True)
    class Meta:
        db_table = 'ImagenCarro'



class Opinion(models.Model):
    titulo = models.CharField(max_length=100)
    descripcion = models.TextField()
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    calificacion = models.PositiveIntegerField(default=1, choices=[(i, i) for i in range(1, 6)])
    def __str__(self):
        return self.titulo + '- by ' + self.user.username

    