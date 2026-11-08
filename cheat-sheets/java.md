# Java Cheat Sheet

```java
// Class
public class User {
    private String name;
    public User(String name) { this.name = name; }
    public String getName() { return name; }
}

// Collections
List<String> list = new ArrayList<>();
list.add("a");
Map<String, Integer> map = new HashMap<>();

// Streams
list.stream()
    .filter(s -> s.length() > 2)
    .map(String::toUpperCase)
    .collect(Collectors.toList());

// Optional
Optional<String> opt = Optional.ofNullable(getName());
opt.ifPresent(System.out::println);

// Records (Java 16+)
record Point(int x, int y) {}

// Try-with-resources
try (var reader = new BufferedReader(new FileReader("f.txt"))) {
    String line = reader.readLine();
}
```

**Examples:** [languages/java/examples/](../languages/java/examples/)
