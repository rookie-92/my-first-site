#!/bin/bash
# Usage: bash enable-pages.sh YOUR_TOKEN
TOKEN="$1"

if [ -z "$TOKEN" ]; then
  echo "ERROR: paste your token after the command, like:"
  echo "  bash enable-pages.sh github_pat_xxx"
  exit 1
fi

echo "Turning on GitHub Pages for rookie-92/my-first-site ..."
echo

curl -s -X POST \
  -H "Authorization: Bearer $TOKEN" \
  -H "Accept: application/vnd.github+json" \
  https://api.github.com/repos/rookie-92/my-first-site/pages \
  -d '{"source":{"branch":"main","path":"/"}}'

echo
echo "----"
echo "If you see site info above (no 'message' error), it worked."
echo "Your link will be live in ~1-2 min at:"
echo "  https://rookie-92.github.io/my-first-site/"
