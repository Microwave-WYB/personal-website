#!/usr/bin/env bash
set -euo pipefail

# Cloudflare Pages does not provide mise by default.
if ! command -v mise >/dev/null 2>&1; then
  curl https://mise.run | sh
  export PATH="$HOME/.local/bin:$PATH"
fi

mise trust --all --yes
mise install
mise -C cv install
mise run site
