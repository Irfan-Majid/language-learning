# Beginner Guide — PHP

**Audience:** First-time learners, web developers  
**Time:** 1–2 weeks

---

## Install

- **Windows:** XAMPP (https://www.apachefriends.org/) or Laragon
- **Mac:** `brew install php`
- Verify: `php --version`

---

## First Program

```php
<?php
// examples/hello.php
echo "Hello, World!\n";
```

```bash
php examples/hello.php
```

---

## Core Concepts

### Variables
```php
<?php
$name = "Alice";
$age = 25;
echo "Name: $name, Age: $age\n";
```

### Arrays
```php
$fruits = ["apple", "banana", "cherry"];
foreach ($fruits as $fruit) {
    echo $fruit . "\n";
}
```

### Functions
```php
function add(int $a, int $b): int {
    return $a + $b;
}
echo add(2, 3);
```

### Associative Arrays (like dictionaries)
```php
$user = ["name" => "Bob", "age" => 30];
echo $user["name"];
```

---

## PHP in Web Context

```php
<?php
// index.php - served by Apache/Nginx
$title = "My PHP Site";
?>
<!DOCTYPE html>
<html>
<head><title><?= htmlspecialchars($title) ?></title></head>
<body><h1><?= $title ?></h1></body>
</html>
```

---

## Next Steps

→ [Laravel](../../frameworks/laravel/) for modern PHP apps  
→ [02-fundamentals/](../02-fundamentals/)
