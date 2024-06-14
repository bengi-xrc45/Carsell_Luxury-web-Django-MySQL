from django import forms
from .models import Opinion


class OpinionForm(forms.ModelForm):
    class Meta:
        model = Opinion
        fields = ["titulo", "descripcion", "calificacion"]
        widgets = {
            "titulo": forms.TextInput(
                attrs={"class": "form-titulo", "placeholder": "Escribe el título"}
            ),
            "descripcion": forms.Textarea(
                attrs={"class": "form-descrip", "placeholder": "Escribe la descripción"}
            ),
            "calificacion": forms.Select(attrs={"class": "form-calificacion"}),
        }
