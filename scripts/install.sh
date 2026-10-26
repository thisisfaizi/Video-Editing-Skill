#!/usr/bin/env bash
# Symlink every skill in skills/ into a Claude skills directory.
# Usage: ./scripts/install.sh [target-dir]   (default: ~/.claude/skills)
set -euo pipefail

repo="$(cd "$(dirname "$0")/.." && pwd)"
target="${1:-$HOME/.claude/skills}"
mkdir -p "$target"

for dir in "$repo"/skills/*/; do
  name="$(basename "$dir")"
  dest="$target/$name"
  if [ -L "$dest" ]; then
    ln -sfn "${dir%/}" "$dest"
    echo "updated  $dest"
  elif [ -e "$dest" ]; then
    echo "skipped  $dest (exists and is not a symlink; remove it first)" >&2
  else
    ln -s "${dir%/}" "$dest"
    echo "linked   $dest -> ${dir%/}"
  fi
done
