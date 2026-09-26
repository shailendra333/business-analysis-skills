#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MODE="${1:-check}"

if [[ "$MODE" != "check" && "$MODE" != "fix" ]]; then
  echo "Usage: $0 [check|fix]" >&2
  echo "  check  - report any drift between canonical skill files and their mirrors (default, exit 1 if drift found)" >&2
  echo "  fix    - copy canonical files over any drifted mirror" >&2
  exit 2
fi

# Skill names are read from install.sh's SKILLS array so this list is never
# maintained twice. A skill with a folder under atomic/, workflows/, or
# quality/ treats that folder as canonical; every other skill treats
# .claude/skills/<name>/ as canonical. In both cases .claude/skills/<name>/
# and .agents/skills/<name>/ are the mirrors that must match canonical.
SKILLS=()
while IFS= read -r line; do
  line="$(echo "$line" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')"
  [[ -z "$line" ]] && continue
  SKILLS+=("$line")
done < <(sed -n '/^SKILLS=(/,/^)/p' "$SCRIPT_DIR/install.sh" | sed '1d;$d')

DRIFT=0

sync_pair() {
  local name="$1" canonical="$2" mirror="$3"
  if [[ ! -f "$canonical" ]]; then
    echo "MISSING canonical: $canonical" >&2
    DRIFT=1
    return
  fi
  if [[ ! -f "$mirror" ]] || ! diff -q "$canonical" "$mirror" >/dev/null 2>&1; then
    if [[ "$MODE" == "fix" ]]; then
      mkdir -p "$(dirname "$mirror")"
      cp "$canonical" "$mirror"
      echo "FIXED  $name -> $mirror"
    else
      echo "DRIFT  $name: $canonical != $mirror"
      DRIFT=1
    fi
  fi
}

for name in "${SKILLS[@]}"; do
  canonical=""
  for src in atomic workflows quality; do
    if [[ -d "$SCRIPT_DIR/$src/$name" ]]; then
      canonical="$SCRIPT_DIR/$src/$name/SKILL.md"
      break
    fi
  done
  if [[ -z "$canonical" ]]; then
    canonical="$SCRIPT_DIR/.claude/skills/$name/SKILL.md"
  fi

  for mirror in "$SCRIPT_DIR/.claude/skills/$name/SKILL.md" "$SCRIPT_DIR/.agents/skills/$name/SKILL.md"; do
    [[ "$mirror" == "$canonical" ]] && continue
    sync_pair "$name" "$canonical" "$mirror"
  done
done

if [[ "$MODE" == "check" ]]; then
  [[ "$DRIFT" -eq 0 ]] && echo "OK: all ${#SKILLS[@]} skills in sync."
  exit "$DRIFT"
fi

echo "Synced ${#SKILLS[@]} skills."
