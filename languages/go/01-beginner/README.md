# Beginner Guide — Go

**Audience:** Developers new to Go (Golang)  
**Time:** 1–2 weeks

---

## Install

Download from https://go.dev/dl/  
Verify: `go version`

---

## First Program

```go
// examples/hello.go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

```bash
go run examples/hello.go
```

---

## Core Concepts

### Variables
```go
name := "Alice"    // short declaration
var age int = 25
const pi = 3.14
```

### Functions
```go
func add(a, b int) int {
    return a + b
}
```

### Structs (like classes without inheritance)
```go
type User struct {
    Name string
    Age  int
}

user := User{Name: "Bob", Age: 30}
```

### Slices (dynamic arrays)
```go
nums := []int{1, 2, 3}
nums = append(nums, 4)
```

### Error Handling (no exceptions!)
```go
result, err := doSomething()
if err != nil {
    log.Fatal(err)
}
```

---

## Why Go?

- Fast compilation, fast execution
- Built for cloud (Docker, Kubernetes written in Go)
- Simple syntax, one way to do things
- Great concurrency with goroutines

---

## Next → [02-fundamentals/](../02-fundamentals/)
