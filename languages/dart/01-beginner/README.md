# Beginner Guide — Dart

**Audience:** Developers learning Flutter or server-side Dart  
**Time:** 1–2 weeks

---

## What Is Dart?

Language by Google, optimized for **Flutter** UI development. Also used for CLI tools and server apps.

---

## Install

Comes with Flutter SDK, or standalone: https://dart.dev/get-dart

Verify: `dart --version`

---

## First Program

```dart
// examples/hello.dart
void main() {
  print('Hello, World!');
}
```

```bash
dart run examples/hello.dart
```

---

## Core Concepts

```dart
// Variables
String name = 'Alice';
final age = 25;        // set once
const pi = 3.14;       // compile-time constant

// Functions
int add(int a, int b) => a + b;

// Classes
class User {
  final String name;
  User(this.name);
  String greet() => 'Hello, $name!';
}

// Null safety
String? nullable;
String required = 'value';

// Collections
List<int> nums = [1, 2, 3];
Map<String, int> scores = {'Alice': 95};
```

---

## Next → [Flutter](../../frameworks/flutter/)
