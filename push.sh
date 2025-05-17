#!/bin/bash

git add .

if git diff-index --quiet HEAD; then
  echo -e "\e[93m沒有變更可提交。\e[0m"
else
  git commit -m "website update：$(date '+%Y-%m-%d %H:%M')"
  git push
  echo -e "\e[32m✅ Deployed to GitHub Pages.\e[0m"
fi
