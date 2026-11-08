# Beginner Guide — Git

**Audience:** Everyone — developers, testers, PMs  
**Time:** 3–5 days

---

## What Is Git?

**Version control** — track changes to code, collaborate with teams, undo mistakes. Used by 99% of software teams worldwide.

---

## Install

Download: https://git-scm.com/downloads  
Verify: `git --version`

---

## Essential Commands

```bash
# Setup (once)
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

# Start a project
git init
git add .
git commit -m "Initial commit"

# Daily workflow
git status          # What's changed?
git add file.js     # Stage a file
git commit -m "Add feature X"
git push            # Send to remote (GitHub)

# Branching
git branch feature-login
git checkout feature-login
git merge feature-login

# Modern shortcut
git switch -c feature-login
```

---

## For Testers

- `git pull` — get latest code before testing
- `git log` — see what changed
- `git diff` — see exact code changes

---

## For Project Managers

- GitHub/GitLab shows project history, PRs, releases
- Understand: commit, branch, merge, PR, release

---

## Practice

See [examples/](./examples/) and https://learngitbranching.js.org

---

## Next → [02-fundamentals/](../02-fundamentals/)
