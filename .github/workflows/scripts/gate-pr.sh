#!/usr/bin/env bash
set -euo pipefail

event="${1:?event path required}"
repo="${2:?GITHUB_REPOSITORY required}"
num=$(jq -r '.issue.number' "$event")
branch_name="til-issue-${num}"

count=$(gh pr list --repo "$repo" --state all --head "$branch_name" --json number -q 'length' 2>/dev/null || echo "0")
if [[ "$count" != "0" ]]; then
  echo "skip=true" >> "$GITHUB_OUTPUT"
  echo "PR for $branch_name already exists, skipping"
  exit 0
fi

echo "skip=false" >> "$GITHUB_OUTPUT"
