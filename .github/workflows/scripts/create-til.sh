#!/usr/bin/env bash
set -euo pipefail

NO_COMMIT=false
NO_BRANCH=false
while [[ "${1:-}" == --* ]]; do
  case "$1" in
    --no-commit) NO_COMMIT=true ;;
    --no-branch) NO_BRANCH=true ;;
    *) echo "Unknown flag: $1"; exit 1 ;;
  esac
  shift
done

num="${1:?issue_number required}"
category="${2:?category required}"
source="${3:?source required}"
title="${4:?title required}"

slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/_/g;s/_+/_/g;s/^_+|_+$//g' | cut -c1-80)
[[ -z "$slug" ]] && slug="til_${num}"

if [[ "$NO_COMMIT" != "true" ]]; then
  git config user.name "github-actions[bot]"
  git config user.email "github-actions[bot]@users.noreply.github.com"
  [[ "$NO_BRANCH" != "true" ]] && git checkout -b "til-issue-${num}"
fi

path=$(ruby scripts/create-page.rb "${category}/${slug}" "${source}")
echo "" >> "$path"
cat solution.txt >> "$path"

ruby scripts/create-readme.rb

if [[ "$NO_COMMIT" != "true" ]]; then
  git add "tils/${category}" .pages.yml README.md
  git commit -m "docs(til): add ${category}/${slug}"
fi
