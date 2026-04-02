#!/usr/bin/env bash
set -euo pipefail

event="${1:?event path required}"
body=$(jq -r '.issue.body // ""' "$event" | tr -d '\r')

source=$(echo "$body" | grep -m1 -E '^source:\s*' | sed -E 's/^source:[[:space:]]*//' | sed 's/[[:space:]]*$//' || true)
if [[ -z "$source" ]]; then
  echo "::error::Issue body must contain a 'source:' line with URL"
  exit 1
fi

solution=$(echo "$body" | awk '/^#+[[:space:]]+solution[[:space:]]*$/ {found=1; next} found' || true)
echo "$solution" > solution.txt

created_at=$(jq -r '.issue.created_at' "$event" | cut -dT -f1)

echo "skip=false" >> "$GITHUB_OUTPUT"
echo "source=${source}" >> "$GITHUB_OUTPUT"
echo "date=${created_at}" >> "$GITHUB_OUTPUT"
