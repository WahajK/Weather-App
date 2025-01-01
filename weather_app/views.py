from django.shortcuts import render
import requests
import openmeteo_requests
import requests_cache
import pandas as pd
from retry_requests import retry
# Create your views here.

def weather_view(request):
    return render(request, 'weather_app/weather.html', {})