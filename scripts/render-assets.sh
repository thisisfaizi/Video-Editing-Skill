#!/usr/bin/env bash
# Render the README images in assets/ from their HTML sources in assets/src/ (needs Google Chrome).
set -euo pipefail
repo="$(cd "$(dirname "$0")/.." && pwd)"
chrome="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
render() { # name width height
  "$chrome" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=2 \
    --virtual-time-budget=8000 --window-size="$2,$3" \
    --screenshot="$repo/assets/$1.png" "file://$repo/assets/src/$1.html" 2>/dev/null
  echo "rendered assets/$1.png"
}
render banner 1280 640
render themes 1280 420
render pipeline 1280 400
true
