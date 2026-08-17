#!/usr/bin/env bash
set -euo pipefail

# Cloudflare Pages does not provide mise by default.
if ! command -v mise >/dev/null 2>&1; then
  curl https://mise.run | sh
  export PATH="$HOME/.local/bin:$PATH"
fi

mise trust --all --yes
# Install only this repository's build tools. Cloudflare's build image may
# include unrelated mise configuration, so `mise install` without arguments
# can attempt to install tools outside this project.
mise install zola@0.23.3 typst@0.15.1
mise run site
