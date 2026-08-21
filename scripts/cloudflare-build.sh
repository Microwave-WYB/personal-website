#!/usr/bin/env bash
set -euo pipefail

# Cloudflare Pages does not provide mise by default.
if ! command -v mise >/dev/null 2>&1; then
  curl https://mise.run | sh
  export PATH="$HOME/.local/bin:$PATH"
fi

# Ignore build-image-wide mise settings. They can declare unrelated tools
# (for example dart-sass-embedded) that are not part of this repository.
# Recent mise versions require the global config path to have a supported
# extension, so use an empty temporary TOML file instead of /dev/null.
MISE_GLOBAL_CONFIG_FILE="$(mktemp "${TMPDIR:-/tmp}/mise-global.XXXXXX.toml")"
export MISE_GLOBAL_CONFIG_FILE
trap 'rm -f "$MISE_GLOBAL_CONFIG_FILE"' EXIT
export MISE_SYSTEM_CONFIG_DIR=/nonexistent
# Stop config discovery before mise reaches Cloudflare's build-home config.
# The ceiling directory itself is excluded, while this repository remains loaded.
export MISE_CEILING_PATHS="$(dirname "$PWD")"

mise trust "$PWD/mise.toml" --yes
mise install --monorepo
# Cloudflare may restore generated outputs with newer timestamps than freshly
# cloned sources. Force the full graph so the CV and site are never stale.
mise run --force site
