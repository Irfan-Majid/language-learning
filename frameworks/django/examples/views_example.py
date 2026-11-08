# Django view example - add to views.py
from django.http import JsonResponse

def hello(request):
    return JsonResponse({"message": "Hello from Django!"})

def user_detail(request, user_id):
    return JsonResponse({"user_id": user_id, "name": f"User {user_id}"})
