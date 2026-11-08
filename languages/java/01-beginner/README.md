# Beginner Guide — Java

**Audience:** First-time OOP learners  
**Time:** 2–3 weeks

---

## Install

1. Install JDK 21 from https://adoptium.net/
2. Verify: `java --version` and `javac --version`

---

## First Program

```java
// examples/Hello.java
public class Hello {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
```

```bash
javac examples/Hello.java
java -cp examples Hello
```

---

## Core Concepts

### Variables
```java
String name = "Alice";
int age = 25;
boolean active = true;
```

### Classes
```java
public class User {
    private String name;
    
    public User(String name) {
        this.name = name;
    }
    
    public String greet() {
        return "Hello, " + name;
    }
}
```

### Collections
```java
List<String> fruits = Arrays.asList("apple", "banana");
Map<String, Integer> scores = new HashMap<>();
scores.put("Alice", 95);
```

---

## Java Ecosystem

- **Spring Boot** — enterprise APIs
- **Android** — mobile (Kotlin preferred now)
- **Banking, insurance** — dominant language

---

## Next → [02-fundamentals/](../02-fundamentals/) → [Spring Boot](../../frameworks/spring-boot/)
