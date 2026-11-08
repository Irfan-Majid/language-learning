# Beginner Guide - Bash

**Time:** 1 week | **Platform:** Linux, macOS, or Git Bash (Windows)

## Step 1: Open a shell
```bash
bash --version
```

## Step 2: First script
```bash
#!/bin/bash
echo "Hello from Bash!"
name="World"
echo "Hello, $name"
```
Save as `hello.sh`, then: `chmod +x hello.sh && ./hello.sh`

## Step 3: Core concepts
- Variables: `name="value"`
- Conditionals: `if [ "$x" -eq 1 ]; then ... fi`
- Loops: `for i in 1 2 3; do echo $i; done`
- Functions: `greet() { echo "Hi"; }`

## Practice
1. Script that lists files in a directory
2. Backup script copying files to a folder
3. FizzBuzz 1-20 in Bash

-> [02-fundamentals/](../02-fundamentals/)
