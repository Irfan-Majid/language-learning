# Beginner Guide - PHPUnit

**Time:** 1 week | **Prerequisites:** [PHP](../../languages/php/01-beginner/)

## Step 1: Install
```bash
composer init
composer require --dev phpunit/phpunit
./vendor/bin/phpunit --version
```

## Step 2: First test
See [examples/HelloTest.php](../examples/HelloTest.php)

```bash
./vendor/bin/phpunit examples/HelloTest.php
```

## Step 3: Assertions
- `$this->assertEquals(5, add(2, 3));`
- `$this->assertTrue($result);`
- `$this->assertStringContainsString('Hello', $str);`

## Practice
1. Test Laravel controller (see laravel/06-testing/)
2. Data provider for multiple inputs
3. Test exception with `expectException`

-> [02-fundamentals/](../02-fundamentals/)
