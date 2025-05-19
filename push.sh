#!/bin/bash

git add .

if git diff-index --quiet HEAD --; then
  echo "no changes to commit."
else
  git commit -m "website update：$(date '+%Y-%m-%d %H:%M')"
fi

echo "git pull --rebase"
if ! git pull origin main --rebase; then
  echo "pull failed, please resolve conflicts manually."
  exit 1
fi

git push origin main
echo "✅ Deployed to GitHub Pages"
