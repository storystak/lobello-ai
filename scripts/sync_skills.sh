#!/usr/bin/env bash
# Refresh skills/ from the canonical skills repo.
#
# skills/ is a VENDORED COPY. Source of truth is storystak/storystak-skills.
# Edit skills there, run this here. Editing skills/ in place works until the
# next sync silently reverts it.
#
#   ./scripts/sync_skills.sh                              # from GitHub
#   ./scripts/sync_skills.sh ../../../storystak-skills    # from a local checkout
#
# Review the diff, then commit. This is the same script the vault repo uses;
# both vendor from the same place so a skill edit reaches every client.

set -euo pipefail
cd "$(dirname "$0")/.."

SOURCE="${1:-https://github.com/storystak/storystak-skills.git}"
DEST="skills"

if [ -d "$SOURCE/skills" ]; then
  SRC_SKILLS="$SOURCE/skills"
  echo "==> Source: local checkout at $SOURCE"
else
  TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT
  echo "==> Source: $SOURCE"
  git clone --depth 1 --quiet "$SOURCE" "$TMP/repo"
  SRC_SKILLS="$TMP/repo/skills"
fi

[ -d "$SRC_SKILLS" ] || { echo "No skills/ at the source." >&2; exit 1; }

# Replace wholesale: a skill deleted upstream must disappear here too.
rm -rf "$DEST"; mkdir -p "$DEST"
cp -R "$SRC_SKILLS"/. "$DEST"/
find "$DEST" -name '.DS_Store' -delete

echo "==> Synced $(find "$DEST" -name SKILL.md | wc -l | tr -d ' ') skills"
git --no-pager diff --stat -- "$DEST" || true
