# Beginner Guide — Laravel

**Audience:** Developers who know PHP basics  
**Time:** 2–3 weeks

---

## What Is Laravel?

The most popular **PHP framework** — elegant syntax, MVC architecture, Eloquent ORM, Blade templates, and huge ecosystem.

---

## Install

```bash
composer create-project laravel/laravel my-app
cd my-app
php artisan serve
```

Requires: PHP 8.2+, Composer (https://getcomposer.org)

---

## First Route

```php
// routes/web.php
Route::get('/', function () {
    return view('welcome');
});

Route::get('/hello', function () {
    return 'Hello, Laravel!';
});
```

---

## Core Concepts

### MVC Pattern
| Layer | Laravel |
|-------|---------|
| Model | Eloquent ORM (`app/Models/User.php`) |
| View | Blade templates (`resources/views/`) |
| Controller | `app/Http/Controllers/` |

### Eloquent ORM
```php
// Get all users
$users = User::all();

// Create user
User::create(['name' => 'Alice', 'email' => 'alice@example.com']);
```

### Blade Templates
```blade
{{-- resources/views/greeting.blade.php --}}
<h1>Hello, {{ $name }}!</h1>
```

### Artisan CLI
```bash
php artisan make:model Post -m    # Model + migration
php artisan make:controller PostController
php artisan migrate
```

---

## Practice Project

**Blog API** — posts with CRUD, use migrations + Eloquent.

---

## Next → [02-fundamentals/](../02-fundamentals/)
