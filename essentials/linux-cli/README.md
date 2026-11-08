# Linux CLI for Developers

Terminal commands every developer uses — servers are Linux.

---

## Essential Commands

| Command | Purpose |
|---------|---------|
| `ls` | List files |
| `cd` | Change directory |
| `pwd` | Current path |
| `mkdir` | Create folder |
| `rm` | Delete (careful!) |
| `cp` / `mv` | Copy / move |
| `cat` | View file |
| `grep` | Search in files |
| `find` | Find files |
| `chmod` | Permissions |
| `ssh` | Remote server |
| `curl` | HTTP requests |
| `ps` / `kill` | Processes |

---

## Pipes & Redirects

```bash
# Pipe output to next command
ls -la | grep ".js"

# Save output to file
echo "hello" > file.txt

# Append
echo "world" >> file.txt
```

---

## Also in Repo

[languages/bash/](../../languages/bash/) — shell scripting

---

## Learning Tracks

[01-beginner/](./01-beginner/) — 20 commands this week
