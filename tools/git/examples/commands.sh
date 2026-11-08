#!/bin/bash
# Git essential commands reference

git init
git status
git add .
git commit -m "Initial commit"
git branch feature-x
git checkout feature-x   # or: git switch feature-x
git merge feature-x
git log --oneline
git remote add origin https://github.com/user/repo.git
git push -u origin main
