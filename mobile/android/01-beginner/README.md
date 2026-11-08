# Beginner Guide — Android Development

**Audience:** Developers new to mobile  
**Time:** 4–6 weeks

---

## What Is Android Development?

Building apps for **Google Android** — 70%+ global mobile market. Primary languages: **Kotlin** (recommended) and Java.

---

## Setup

1. Install **Android Studio**: https://developer.android.com/studio
2. Install SDK via SDK Manager
3. Create Virtual Device (emulator) or use physical device

---

## First App (Kotlin)

```kotlin
// examples/MainActivity.kt - simplified
package com.example.myapp

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }
}
```

```xml
<!-- res/layout/activity_main.xml -->
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:gravity="center">
    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Hello, Android!" />
</LinearLayout>
```

---

## Core Concepts

| Concept | Description |
|---------|-------------|
| **Activity** | Single screen in the app |
| **Fragment** | Reusable UI portion |
| **Layout XML** | UI structure |
| **Jetpack Compose** | Modern declarative UI (like Flutter) |
| **Manifest** | App permissions and config |
| **Gradle** | Build system |

---

## Android vs Flutter vs React Native

| | Native Android | Flutter | React Native |
|---|----------------|---------|--------------|
| Language | Kotlin | Dart | JavaScript |
| Performance | Best | Near-native | Good |
| UI | Material Design | Custom widgets | Native components |

---

## Learning Path

1. Kotlin basics → [languages/kotlin](../../languages/kotlin/)
2. Android fundamentals (this folder)
3. Jetpack Compose (modern UI)
4. Publish to Google Play Store

---

## Next → [02-fundamentals/](../02-fundamentals/)
