from django.shortcuts import render
# Create your views here.

def weather_view(request):
    return render(request, 'weather_app/weather.html', {})