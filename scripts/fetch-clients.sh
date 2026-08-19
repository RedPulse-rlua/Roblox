#!/usr/bin/env bash
set -euo pipefail

CLIENT_DIR="clients"
mkdir -p "$CLIENT_DIR"

# owner/repo pairs of legacy Roblox client sources
REPOS=(
  "al-ex427/rbx2016"
)

> "$CLIENT_DIR/audit.txt"

for repo in "${REPOS[@]}"; do
  name="${repo//\//__}"
  echo "Fetching $repo ..."
  if git clone --depth 1 --quiet "https://github.com/$repo.git" "$CLIENT_DIR/$name"; then
    rm -rf "$CLIENT_DIR/$name/.git"
    echo "OK: $repo -> clients/$name" >> "$CLIENT_DIR/audit.txt"
  else
    echo "FAILED: $repo" >> "$CLIENT_DIR/audit.txt"
  fi
done

echo "Done. See clients/audit.txt for results."