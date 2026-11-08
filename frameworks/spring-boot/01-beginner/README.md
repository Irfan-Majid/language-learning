# Beginner Guide - Spring Boot

**Time:** 3-4 weeks | **Prerequisites:** [Java](../../languages/java/01-beginner/)

## Step 1: Create project
- https://start.spring.io/ - choose Web, Spring Boot 3.x, Java 17+

```bash
./mvnw spring-boot:run
```

## Step 2: First controller
See [examples/HelloController.java](../examples/HelloController.java)

```java
@RestController
public class HelloController {
    @GetMapping("/")
    public Map<String, String> hello() {
        return Map.of("message", "Hello Spring Boot!");
    }
}
```

## Step 3: Core concepts
- `@SpringBootApplication` main class
- `@RestController` + `@GetMapping`
- `application.properties` config
- Spring Data JPA for database

## Practice
1. CRUD REST API for `Product`
2. Connect H2 in-memory database
3. Add validation with `@Valid`

-> [02-fundamentals/](../02-fundamentals/)
