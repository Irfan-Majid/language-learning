<?php
// examples/routes-example.php - Conceptual Laravel routes (use in routes/web.php)

use Illuminate\Support\Facades\Route;

// Basic route
Route::get('/greet/{name}', function (string $name) {
    return "Hello, {$name}!";
});

// Route with controller (typical pattern)
// Route::get('/users', [UserController::class, 'index']);
