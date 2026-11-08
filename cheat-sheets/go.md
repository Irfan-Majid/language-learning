# Go Cheat Sheet

```go
package main

import "fmt"

func main() {
    // Variables
    var x int = 10
    y := "hello"

    // Slice
    nums := []int{1, 2, 3}
    nums = append(nums, 4)

    // Map
    m := map[string]int{"a": 1}

    // Struct
    type User struct { Name string; Age int }
    u := User{Name: "Alice", Age: 30}

    // Function
    result := add(2, 3)

    // Error handling
    f, err := os.Open("file.txt")
    if err != nil { return err }
    defer f.Close()

    // Goroutine
    go func() { fmt.Println("async") }()

    // Interface
    var w io.Writer = os.Stdout
}

func add(a, b int) int { return a + b }
```

**Examples:** [languages/go/examples/](../languages/go/examples/)
