# Beginner Guide - Rust

**Time:** 3-4 weeks (steeper learning curve)

## Step 1: Install
```bash
# https://rustup.rs/
rustc --version
cargo --version
```

## Step 2: Run example
```bash
rustc examples/hello.rs
./hello        # or hello.exe on Windows
```

## Step 3: Core concepts
```rust
let x = 5;              // immutable by default
let mut count = 0;      // mutable
fn add(a: i32, b: i32) -> i32 { a + b }
let v = vec![1, 2, 3];
```

**Key idea:** Ownership - each value has one owner. Borrow with `&`.

## Practice
1. CLI that sums numbers from command line args
2. Struct `Rectangle` with area method
3. Read file and print line count

-> [02-fundamentals/](../02-fundamentals/)
