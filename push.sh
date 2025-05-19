#!/bin/bash

# unstaged changes check
if ! git diff --quiet; then
  echo "Unstaged changes detected.(git add or git stash)."
  git status
  exit 1
fi

# Check for staged but uncommitted changes
if ! git diff --cached --quiet; then
  echo "Found staged changes."
else
  echo "No staged changes yet. Staging all changes with 'git add .'"
  git add .
fi

# git pull --rebase
echo "git pull --rebase"
if ! git pull origin main --rebase; then
  echo  "pull failed, check your commit status."
  exit 1
fi
echo  "successfully pulled from main branch"

# commit and push
if git diff-index --quiet HEAD --; then
  echo  "no changes to commit"
else
  git commit -m "website update：$(date '+%Y-%m-%d %H:%M')"
  git push origin main
  echo  "✅ Deployed to GitHub Pages"
fi

