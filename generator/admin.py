from django.contrib import admin

from .models import Carro, ImagenCarro, Opinion

class ImagenCarroInline(admin.TabularInline):
    model = ImagenCarro
    extra = 1  

class CarroAdmin(admin.ModelAdmin):
    inlines = [ImagenCarroInline]
    
class OpinionAdmin(admin.ModelAdmin):
    readonly_fields = ("fecha_creacion",)

admin.site.register(Carro, CarroAdmin)
admin.site.register(Opinion, OpinionAdmin)
