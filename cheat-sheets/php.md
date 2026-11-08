# PHP Cheat Sheet

```php
<?php
// Variables
$name = "Alice";
$nums = [1, 2, 3];

// Functions
function greet(string $name): string {
    return "Hello, $name!";
}

// OOP
class User {
    public function __construct(public string $name) {}
}

// Arrays
array_map(fn($n) => $n * 2, $nums);
array_filter($nums, fn($n) => $n > 1);

// Null coalescing
$val = $data['key'] ?? 'default';

// String
"Hello, $name";
sprintf("Age: %d", 30);

// Include / autoload
require_once 'config.php';
// Composer: vendor/autoload.php
```

**Examples:** [languages/php/examples/](../languages/php/examples/)
