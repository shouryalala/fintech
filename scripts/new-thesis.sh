#!/usr/bin/env bash
#
# new-thesis.sh — scaffold a new entry in the Investment Thesis Log.
#
# Usage:  scripts/new-thesis.sh "Your idea title here"
#
# Creates theses/NNN-slug/ from theses/_template/, stamps today's date and a
# 90-day review date, and adds a row to theses/INDEX.md. Prints the new memo path.
#
# macOS/BSD `date` syntax is used (date -v+90d). For GNU/Linux, swap to: date -d '+90 days'.

set -euo pipefail

if [[ $# -lt 1 || -z "${1// /}" ]]; then
  echo "usage: $0 \"thesis title\"" >&2
  exit 1
fi

TITLE="$1"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(dirname "$SCRIPT_DIR")"
THESES="$ROOT/theses"
TEMPLATE="$THESES/_template"
INDEX="$THESES/INDEX.md"

[[ -d "$TEMPLATE" ]] || { echo "error: template not found at $TEMPLATE" >&2; exit 1; }
[[ -f "$INDEX" ]]    || { echo "error: index not found at $INDEX" >&2; exit 1; }

# Next zero-padded ID (scan existing NNN- folders).
last="$(ls -d "$THESES"/[0-9][0-9][0-9]-*/ 2>/dev/null \
        | sed -E 's#.*/([0-9]{3})-.*#\1#' | sort -n | tail -1 || true)"
next=$(( 10#${last:-000} + 1 ))
ID="$(printf '%03d' "$next")"

# Slugify the title: lowercase, non-alphanumerics -> dashes, trim.
SLUG="$(printf '%s' "$TITLE" \
        | tr '[:upper:]' '[:lower:]' \
        | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//')"
[[ -n "$SLUG" ]] || { echo "error: title produced an empty slug" >&2; exit 1; }

DEST="$THESES/$ID-$SLUG"
[[ -e "$DEST" ]] && { echo "error: $DEST already exists" >&2; exit 1; }

DATE="$(date +%F)"
REVIEW_DUE="$(date -v+90d +%F)"

# Scaffold from template and substitute placeholders (env-var interpolation avoids quoting issues).
cp -R "$TEMPLATE" "$DEST"
ID="$ID" TITLE="$TITLE" DATE="$DATE" REVIEW_DUE="$REVIEW_DUE" perl -pi -e '
  s/\{\{ID\}\}/$ENV{ID}/g;
  s/\{\{TITLE\}\}/$ENV{TITLE}/g;
  s/\{\{REVIEW_DUE\}\}/$ENV{REVIEW_DUE}/g;
  s/\{\{DATE\}\}/$ENV{DATE}/g;
' "$DEST/memo.md"

# Insert a dashboard row immediately below the insertion marker (newest first).
ROW="| [$ID]($ID-$SLUG/memo.md) | $TITLE | 🟡 open | 3/5 | thematic | $DATE | $DATE | $REVIEW_DUE |"
ROW="$ROW" perl -pi -e 's/(<!-- NEW-THESIS-INSERTION-POINT -->)/$1\n$ENV{ROW}/' "$INDEX"

echo "Created thesis $ID — $TITLE"
echo "  $DEST/memo.md"
echo "  (added row to theses/INDEX.md)"
