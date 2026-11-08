# Beginner Guide - iOS Development

**Time:** 4-6 weeks | **Prerequisites:** [Swift](../../languages/swift/01-beginner/)

## Step 1: Install Xcode
- Mac App Store -> Xcode (includes Simulator)

## Step 2: Create project
- File -> New -> Project -> iOS App -> SwiftUI
- Run on Simulator (Cmd+R)

## Step 3: SwiftUI basics
See [examples/ContentView.swift](../examples/ContentView.swift)

```swift
struct ContentView: View {
    @State private var count = 0
    var body: some View {
        VStack {
            Text("Count: \(count)")
            Button("Add") { count += 1 }
        }
    }
}
```

## Practice
1. List view with 5 items
2. Navigation to detail screen
3. Fetch JSON with async/await

-> [02-fundamentals/](../02-fundamentals/)
