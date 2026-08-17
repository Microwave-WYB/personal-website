#!/usr/bin/env bash
set -euo pipefail

# Cloudflare injects this legacy tool-version variable into Pages builds.
# mise interprets every MISE_<TOOL>_VERSION variable as a requested tool,
# but dart-sass-embedded is not part of this repository or mise's registry.
unset MISE_DART_SASS_EMBEDDED_VERSION

# Cloudflare Pages does not provide mise by default.
if ! command -v mise >/dev/null 2>&1; then
  curl https://mise.run | sh
  export PATH="$HOME/.local/bin:$PATH"
fi

# Ignore build-image-wide mise settings. They can declare unrelated tools
# (for example dart-sass-embedded) that are not part of this repository.
export MISE_GLOBAL_CONFIG_FILE=/dev/null
export MISE_SYSTEM_CONFIG_DIR=/nonexistent

# These repository configs contain only plain tools and tasks, so mise does
# not require a trust prompt in CI.
mise install --monorepo
mise run site
