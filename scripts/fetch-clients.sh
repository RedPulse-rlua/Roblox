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
  echo "Fetching $repo (tarball)..."
  rm -rf "$CLIENT_DIR/$name"
  mkdir -p "$CLIENT_DIR/$name"
  if curl -fsSL "https://codeload.github.com/$repo/tar.gz/refs/heads/main" \
      | tar -xz --strip-components=1 -C "$CLIENT_DIR/$name"; then
    # Strip nested .gitignore files so nothing is silently excluded from the monorepo
    find "$CLIENT_DIR/$name" -name .gitignore -delete
    echo "OK: $repo -> clients/$name" >> "$CLIENT_DIR/audit.txt"
  else
    echo "FAILED: $repo" >> "$CLIENT_DIR/audit.txt"
  fi
done

echo "Done. See clients/audit.txt for results."