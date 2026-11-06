#!/usr/bin/env bash
# Build the staff docs site (docs.littlesweetcafe.com.au) with MkDocs.
#
#   scripts/build-docs.sh          build into build/site
#   scripts/build-docs.sh serve    live preview at http://127.0.0.1:8000
#
# Copies the content folders into build/docs, because MkDocs can't use the
# repo root as its docs folder. blog/ is left out on purpose: blog posts are
# published on the main Square site, and a second copy here would compete
# with it in search results.
set -euo pipefail

cd "$(dirname "$0")/.."
export NO_MKDOCS_2_WARNING=1

CONTENT_DIRS=(training procedures maintenance recipes assets)

rm -rf build/docs
mkdir -p build/docs
cp -R site/. build/docs/

for dir in "${CONTENT_DIRS[@]}"; do
  if [ -d "$dir" ]; then
    cp -R "$dir" build/docs/
  fi
done

if [ "${1:-}" = "serve" ]; then
  mkdocs serve
else
  mkdocs build --strict
fi
