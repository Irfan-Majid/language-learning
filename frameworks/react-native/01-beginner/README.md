# Beginner Guide - React Native

**Time:** 3-4 weeks | **Prerequisites:** [React](../react/01-beginner/)

## Step 1: Setup (Expo - easiest)
```bash
npx create-expo-app@latest MyApp
cd MyApp
npx expo start
```
Scan QR with Expo Go app on phone.

## Step 2: Core components
```jsx
import { View, Text, Button } from "react-native";
// View = div, Text = p, StyleSheet for CSS-like styles
```

See [examples/App.tsx](../examples/App.tsx)

## Step 3: Key differences from React web
- No HTML elements - use View, Text, Image
- StyleSheet instead of CSS files
- Navigation: React Navigation library
- Platform-specific code: `Platform.OS`

## Practice
1. Counter app with Button
2. FlatList showing 10 items
3. Fetch API data and display list

-> [02-fundamentals/](../02-fundamentals/)
