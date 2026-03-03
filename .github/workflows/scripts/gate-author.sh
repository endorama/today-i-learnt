#!/usr/bin/env bash
set -euo pipefail

event="${1:?event path required}"
author=$(jq -r '.issue.user.login' "$event")
num=$(jq -r '.issue.number' "$event")
title=$(jq -r '.issue.title // ""' "$event")

if [[ "$author" != "endorama" ]]; then
  echo "skip=true" >> "$GITHUB_OUTPUT"
  echo "Author $author is not endorama, skipping"
  exit 0
fi

echo "skip=false" >> "$GITHUB_OUTPUT"
echo "issue_number=${num}" >> "$GITHUB_OUTPUT"
echo "title<<__TIL_DELIM__" >> "$GITHUB_OUTPUT"
echo "$title" >> "$GITHUB_OUTPUT"
echo "__TIL_DELIM__" >> "$GITHUB_OUTPUT"
