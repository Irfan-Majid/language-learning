# Git Cheat Sheet

```bash
# Setup
git config --global user.name "You"
git config --global user.email "you@example.com"

# Daily
git status
git add file.txt          # or git add .
git commit -m "message"
git push origin main
git pull origin main

# Branches
git branch feature-x
git switch feature-x      # or git checkout feature-x
git merge feature-x
git branch -d feature-x

# History
git log --oneline
git diff
git show COMMIT_HASH

# Undo
git restore file.txt              # discard changes
git reset --soft HEAD~1           # undo commit, keep changes
git revert COMMIT_HASH            # safe undo on shared branch

# Remote
git clone https://github.com/user/repo.git
git remote -v
git fetch origin

# Stash
git stash
git stash pop
```

**Full guide:** [tools/git/](../tools/git/)
