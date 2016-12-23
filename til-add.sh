#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

APPLICATION="til-add"
VERSION="0.0.1"

# http://stackoverflow.com/a/3182519/715002
USAGE="Usage: $APPLICATION [-hv] category title

  Commands:
    category      The page category
    title         The title of the page

  Options:
    -h        Print this help screen
    -v        Print version

Version $VERSION"

function usage() {
  echo "$USAGE" >&2
}

# Parse command line options.
while getopts hvo: OPT; do
  case "$OPT" in
    h)
      usage
      exit 0
      ;;
    v)
      echo "$APPLICATION - Version $VERSION"
      exit 0
      ;;
    \?)
      # getopts issues an error message
      usage
      exit 1
      ;;
  esac
done

# Remove the switches we parsed above.
shift `expr $OPTIND - 1`

# We want at least one non-option argument. 
if [ $# -lt 2 ]; then
  usage
  exit 1
fi

category=$1
title=${2// /-}

echo "adding ${category}/${title}..."

ruby scripts/create-page.rb "${category}/${title}"
ruby scripts/create-readme.rb
git add .
git commit -m "add ${category}/${title}"

# EOF
