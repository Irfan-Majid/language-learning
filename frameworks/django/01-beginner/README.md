# Beginner Guide - Django

**Audience:** First-time learners (know Python basics)  
**Time:** 2-3 weeks

**Prerequisites:** [languages/python/01-beginner/](../../languages/python/01-beginner/)

---

## Step 1: Install

```bash
pip install django
django-admin --version
```

---

## Step 2: Create Your First Project

```bash
django-admin startproject mysite
cd mysite
python manage.py startapp blog
python manage.py runserver
```

Open http://127.0.0.1:8000/

---

## Step 3: Your First View

Add to `blog/views.py` (see [examples/views_example.py](../examples/views_example.py)):

```python
from django.http import JsonResponse

def hello(request):
    return JsonResponse({"message": "Hello from Django!"})
```

Wire URL in `mysite/urls.py`:

```python
from django.urls import path
from blog import views

urlpatterns = [
    path("hello/", views.hello),
]
```

Visit http://127.0.0.1:8000/hello/

---

## Step 4: Core Concepts

| Concept | What it does |
|---------|--------------|
| **Project vs App** | Project = whole site; App = reusable module |
| **MVT** | Model (data), View (logic), Template (HTML) |
| **ORM** | Query database without raw SQL |
| **Admin** | Built-in CRUD UI at `/admin/` |
| **Migrations** | Version control for database schema |

---

## Practice Exercises

1. Create a `pages` app with a home view returning "Welcome"
2. Add a model `Post` with `title` and `body` fields
3. Register `Post` in admin and create 3 posts
4. List posts on a template page

---

## For Testers

- Use Django test client: `client.get("/hello/")`
- Test models with `TestCase` and fixtures
- See [06-testing/](../06-testing/)

---

## Next Step

-> [02-fundamentals/](../02-fundamentals/)
