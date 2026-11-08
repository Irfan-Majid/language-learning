# Bash Cheat Sheet

```bash
#!/bin/bash

# Variables
name="World"
echo "Hello, $name"
echo ${name^^}    # uppercase (bash 4+)

# Conditionals
if [ "$x" -eq 1 ]; then echo "one"; elif [ "$x" -gt 1 ]; then echo "many"; fi
if [[ -f "file.txt" ]]; then echo "exists"; fi

# Loops
for i in 1 2 3; do echo $i; done
for f in *.txt; do echo "$f"; done
while read line; do echo "$line"; done < file.txt

# Functions
greet() { echo "Hi, $1"; }

# Pipes & redirects
cmd > file.txt 2>&1    # stdout+stderr to file
cmd | grep pattern
$(command)             # command substitution

# Useful
chmod +x script.sh
./script.sh
export VAR=value
source .env
```

**Examples:** [languages/bash/examples/](../languages/bash/examples/)
