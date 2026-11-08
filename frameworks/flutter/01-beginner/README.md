# Beginner Guide — Flutter

**Audience:** Developers new to mobile or Dart  
**Time:** 3–4 weeks

---

## What Is Flutter?

Google's UI toolkit — build **iOS, Android, Web, and Desktop** from a single Dart codebase. Hot reload for fast development.

---

## Install

1. Install Flutter SDK: https://docs.flutter.dev/get-started/install
2. Verify: `flutter doctor`
3. Install Android Studio or VS Code + Flutter extension

---

## Create First App

```bash
flutter create my_app
cd my_app
flutter run
```

---

## First Widget

```dart
// examples/hello.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello Flutter')),
        body: const Center(child: Text('Hello, World!')),
      ),
    );
  }
}
```

---

## Core Concepts

| Concept | Description |
|---------|-------------|
| **Widget** | Everything is a widget (UI building block) |
| **StatelessWidget** | UI that doesn't change |
| **StatefulWidget** | UI with mutable state |
| **Material/Cupertino** | Android / iOS design systems |
| **Hot Reload** | See changes instantly |

### Stateful Counter
```dart
class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => setState(() => count++),
      child: Text('Count: $count'),
    );
  }
}
```

---

## Flutter vs React Native

| Flutter | React Native |
|---------|--------------|
| Dart language | JavaScript |
| Custom rendering (Skia) | Native components |
| ~95% code sharing | ~80% code sharing |
| Growing fast | Mature ecosystem |

---

## Next → [Dart](../../languages/dart/) → [02-fundamentals/](../02-fundamentals/)
