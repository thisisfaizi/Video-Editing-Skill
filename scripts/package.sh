#!/usr/bin/env bash
# Build one upload zip per skill (for claude.ai Settings → Capabilities → Skills).
# Each zip holds <skill-name>/SKILL.md at its root. Output: dist/<skill-name>.zip
set -euo pipefail

repo="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$repo/dist"

for dir in "$repo"/skills/*/; do
  name="$(basename "$dir")"
  out="$repo/dist/$name.zip"
  rm -f "$out"
  (cd "$repo/skills" && zip -qr "$out" "$name" -x '*.DS_Store')
  echo "built    dist/$name.zip"
done
