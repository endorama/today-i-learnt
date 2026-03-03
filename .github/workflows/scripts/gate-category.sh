#!/usr/bin/env bash
set -euo pipefail

event="${1:?event path required}"
labels_json=$(jq -r '.issue.labels // []' "$event")
category=$(echo "$labels_json" | jq -r '.[].name' | grep -m1 -E '^category:\s*' || true)
category="${category#category:}"
category=$(echo "$category" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
category=$(echo "$category" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/_/g;s/_+/_/g;s/^_+|_+$//g')

if [[ -z "$category" ]]; then
  echo "skip=true" >> "$GITHUB_OUTPUT"
  echo "No category: label found, skipping"
  exit 0
fi

echo "skip=false" >> "$GITHUB_OUTPUT"
echo "category=${category}" >> "$GITHUB_OUTPUT"
