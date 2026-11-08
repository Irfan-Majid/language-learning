# Beginner Guide - Scala

**Time:** 3 weeks | **Runs on:** JVM

## Step 1: Install
- https://www.scala-lang.org/download/ (includes scala CLI)

## Step 2: Run example
```bash
scala examples/Hello.scala
```

## Step 3: Core concepts
```scala
val name = "Scala"           // immutable
def double(n: Int) = n * 2
val nums = List(1, 2, 3)
nums.map(_ * 2).filter(_ > 2)
case class User(name: String, age: Int)
```

## Practice
1. Case class + companion object pattern
2. map/filter on a list of strings
3. Pattern matching on sealed trait

-> [02-fundamentals/](../02-fundamentals/)
