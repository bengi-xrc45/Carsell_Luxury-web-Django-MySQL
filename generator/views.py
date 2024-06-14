from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from .models import Carro, Opinion
from .forms import OpinionForm
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.contrib.auth import login, logout, authenticate
from django.db import IntegrityError
from django.utils import timezone
import random


def about(request):
    # return HttpResponse ('hello world')
    car = Carro.objects.all()
    return render(request, "generator/about.html", {"cars": car})


def home(request):
    cars = list(Carro.objects.all())
    random.shuffle(cars)
    return render(request, "generator/home.html", {"cars": cars})


def signup(request):
    if request.method == "GET":
        return render(request, "generator/signup.html", {"form": UserCreationForm})
    else:
        if request.POST["password1"] == request.POST["password2"]:
            try:
                user = User.objects.create_user(
                    username=request.POST["username"],
                    password=request.POST["password1"],
                )
                user.save()
                login(request, user)
                return redirect("home")
            except IntegrityError:
                return render(
                    request,
                    "signup.html",
                    {
                        "form": UserCreationForm,
                        "error": "Nombre de usuario ya existente",
                    },
                )

        return render(
            request,
            "generator/signup.html",
            {"form": UserCreationForm, "error": "Las contraseñas no coinciden"},
        )


def signin(request):
    if request.method == "GET":
        return render(request, "generator/signin.html", {"form": AuthenticationForm})
    else:
        user = authenticate(
            request,
            username=request.POST["username"],
            password=request.POST["password"],
        )
        if user is None:
            return render(
                request,
                "generator/signin.html",
                {
                    "form": AuthenticationForm,
                    "error": "Nombre de usuario o contraseña incorrecta",
                },
            )
        else:
            login(request, user)
            return redirect("home")


def signout(request):
    logout(request)
    return redirect("home")


def models(request):
    cars = Carro.objects.all().order_by("-precio")
    return render(request, "generator/modelos.html", {"cars": cars})


def models_info(request, carro_id):
    # cars = Carro.objects.order_by('?')[:6]
    # cars = random.sample(all_cars, min(len(all_cars), 6))
    # cars = random.sample(all_cars, min(len(all_cars)))
    # cars = Carro.objects.all()
    cars = list(Carro.objects.all())
    random.shuffle(cars)
    car = get_object_or_404(Carro, pk=carro_id)
    return render(request, "generator/info.html", {"carro": car, "cars": cars})

@login_required
def opinions(request):
    opinion = Opinion.objects.filter(user=request.user)
    return render(request, "generator/opinions.html", {"opinions": opinion})

@login_required
def create_opinion(request):
    if request.method == "GET":
        return render(request, "generator/create_opinion.html", {"form": OpinionForm})
    else:
        try:
            form = OpinionForm(request.POST)
            new_opinion = form.save(commit=False)
            new_opinion.user = request.user
            new_opinion.save()
            return redirect("modelos:opinions")
        except ValueError:
            return render(
                request,
                "generator/create_opinion.html",
                {"form": OpinionForm, "error": "por favor ingresar informacion valida"},
            )

@login_required
def opinion_detail(request, opinion_id):
    if request.method == 'GET':
        opinion = get_object_or_404(Opinion, pk=opinion_id, user=request.user)
        form = OpinionForm(instance=opinion)
        return  render(request, "generator/opinion_detail.html", {"opinion":opinion, "form":form})
    else:
        try:
            opinion = get_object_or_404(Opinion, pk=opinion_id, user=request.user)
            form = OpinionForm(request.POST, instance=opinion)
            form.save()
            return redirect("modelos:opinions")
        except ValueError:
            return render(
                request,
                "generator/opinion_detail.html", {"opinion":opinion, "form":form, "error":"error al editar la opinion"}
            )

@login_required
def delete_opinion(request, opinion_id):
    opinion = get_object_or_404(Opinion, pk=opinion_id, user=request.user)
    if request.method == 'POST':
        opinion.delete()
        return redirect("modelos:opinions")
    # return render(request, 'generator/opinions.html', {'opinion': opinion})
       