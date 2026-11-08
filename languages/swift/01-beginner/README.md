# Beginner Guide - Swift

**Time:** 2-3 weeks | **Requires:** Mac for iOS; Swift runs on Linux for CLI

## Step 1: Install
- Xcode from Mac App Store (includes Swift)

## Step 2: Run example
```bash
swift examples/hello.swift
```

## Step 3: Core concepts
```swift
let constant = 42
var mutable = "hello"
func greet(_ name: String) -> String { "Hello, \(name)!" }
let nums = [1, 2, 3]
var optional: String? = nil   // Optionals
if let value = optional { print(value) }
```

## Practice
1. Struct `Book` with title and pages
2. Guard statement example
3. Simple SwiftUI view (see mobile/ios/)

-> [02-fundamentals/](../02-fundamentals/)
