from django.shortcuts import render, redirect
from .models import Movie
from .forms import MovieForm
from django.contrib import messages


# Create your views here.
def homepage(request):
    if request.method == "POST":
        movie_form = MovieForm(request.POST, request.FILES)
        if movie_form.is_valid():
            movie_form.save()
            messages.success(request, ('Your movie was successfully added!'))
        else:
            messages.error(request, 'Error saving form')

        return redirect("main:homepage")
    movie_form = MovieForm()
    movies = Movie.objects.all()
    return render(request=request, template_name="/videos_uploader/home.html", context={'movie_form': movie_form, 'movies': movies})