#!/usr/bin/env bash
set -euo pipefail

num="${1:?issue_number required}"
title="${2:?title required}"

git push -u origin "til-issue-${num}"
gh pr create --title "TIL: ${title}" --body "Closes #${num}"
