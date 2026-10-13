#!/usr/bin/env bash
set -euo pipefail
cd /workspace

if curl -sf --max-time 2 "http://127.0.0.1:8080/Index.html" >/dev/null 2>&1; then
  exit 0
fi

exec python3 -m http.server 8080 --bind 0.0.0.0
