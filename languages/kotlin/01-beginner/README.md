# Beginner Guide - Kotlin

**Time:** 2 weeks | **Prerequisites:** Basic programming helpful

## Step 1: Install
- Android Studio (includes Kotlin), or https://kotlinlang.org/docs/command-line.html

## Step 2: Run example
```bash
# See examples/Hello.kt
kotlinc Hello.kt -include-runtime -d hello.jar
java -jar hello.jar
```

## Step 3: Core concepts
```kotlin
val immutable = 42          // read-only
var mutable = "hello"       // reassignable
fun add(a: Int, b: Int) = a + b
val nums = listOf(1, 2, 3)
nums.forEach { println(it) }
```

## Practice
1. FizzBuzz in Kotlin
2. Data class `User(name, email)` with 3 instances
3. Filter list of numbers > 10

-> [02-fundamentals/](../02-fundamentals/)
