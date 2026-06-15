#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

die() {
  echo "skill validation failed: $1" >&2
  exit 1
}

count_lines_matching() {
  local pattern="$1"
  local file="$2"

  awk -v pattern="$pattern" '$0 ~ pattern { count++ } END { print count + 0 }' "$file"
}

read_frontmatter_value() {
  local key="$1"
  local file="$2"

  awk -v key="$key" '
    NR == 1 && $0 != "---" { exit 1 }
    NR > 1 && $0 == "---" { exit 0 }
    NR > 1 && index($0, key ": ") == 1 {
      value = substr($0, length(key) + 3)
      print value
      exit 0
    }
  ' "$file"
}

frontmatter_file_for() {
  local skill_file="$1"
  local closing_line="$2"
  local target="$3"

  sed -n "2,$((closing_line - 1))p" "$skill_file" > "$target"
}

validate_skill_file() {
  local skill_file="$1"
  local skill_dir
  local folder_name
  local rel_dir
  local depth
  local group_name
  local first_line
  local closing_line
  local fm
  local name
  local description
  local body_lines

  skill_dir="$(dirname "$skill_file")"
  folder_name="$(basename "$skill_dir")"
  rel_dir="${skill_dir#./}"
  depth="$(awk -F/ '{ print NF }' <<< "$rel_dir")"
  group_name="$(dirname "$rel_dir")"

  first_line="$(sed -n '1p' "$skill_file")"
  [ "$first_line" = "---" ] || die "$skill_file must start with YAML frontmatter delimiter."

  closing_line="$(awk 'NR > 1 && $0 == "---" { print NR; exit }' "$skill_file")"
  [ -n "$closing_line" ] || die "$skill_file must close YAML frontmatter with ---."

  if [ "$depth" -gt 2 ]; then
    die "$skill_file is too deeply nested. Use skill-name/SKILL.md or group-skills/skill-name/SKILL.md."
  fi

  if [ "$depth" -eq 2 ] && ! printf '%s\n' "$group_name" | grep -Eq '^[a-z0-9][a-z0-9-]*-skills$'; then
    die "$skill_file group folder must be lowercase kebab-case ending in -skills."
  fi

  fm="$(mktemp)"
  frontmatter_file_for "$skill_file" "$closing_line" "$fm"

  if [ "$(count_lines_matching '^name: .+' "$fm")" -ne 1 ]; then
    rm -f "$fm"
    die "$skill_file must have exactly one frontmatter name field."
  fi

  if [ "$(count_lines_matching '^description: .+' "$fm")" -ne 1 ]; then
    rm -f "$fm"
    die "$skill_file must have exactly one frontmatter description field."
  fi

  if grep -Evq '^(name|description): .+$' "$fm"; then
    rm -f "$fm"
    die "$skill_file frontmatter must contain only name and description fields."
  fi

  name="$(read_frontmatter_value "name" "$skill_file")"
  description="$(read_frontmatter_value "description" "$skill_file")"
  rm -f "$fm"

  [ -n "$name" ] || die "$skill_file has an empty name."
  [ -n "$description" ] || die "$skill_file has an empty description."

  if ! printf '%s\n' "$name" | grep -Eq '^[a-z0-9][a-z0-9-]{0,62}$'; then
    die "$skill_file name must be lowercase kebab-case and under 64 characters."
  fi

  if [ "$folder_name" != "$name" ]; then
    die "$skill_file folder name '$folder_name' must match frontmatter name '$name'."
  fi

  body_lines="$(tail -n "+$((closing_line + 1))" "$skill_file" | awk 'NF { count++ } END { print count + 0 }')"
  [ "$body_lines" -gt 0 ] || die "$skill_file must include Markdown body instructions after frontmatter."

  if find "$skill_dir" -maxdepth 1 -type f \( -name 'README.md' -o -name 'CHANGELOG.md' -o -name 'QUICK_REFERENCE.md' -o -name 'INSTALLATION_GUIDE.md' \) | grep -q .; then
    die "$skill_dir must not contain auxiliary docs such as README.md or CHANGELOG.md."
  fi

  printf '%s\n' "$name"
}

skill_files_file="$(mktemp)"
find . -mindepth 2 -maxdepth 3 -type f -name SKILL.md | sort > "$skill_files_file"

skill_count="$(awk 'END { print NR + 0 }' "$skill_files_file")"
[ "$skill_count" -gt 0 ] || {
  rm -f "$skill_files_file"
  die "no SKILL.md files found."
}

names_file="$(mktemp)"
while IFS= read -r skill_file; do
  [ -n "$skill_file" ] || continue
  validate_skill_file "$skill_file" >> "$names_file"
done < "$skill_files_file"

duplicates="$(sort "$names_file" | uniq -d)"
rm -f "$names_file" "$skill_files_file"

if [ -n "$duplicates" ]; then
  die "duplicate skill names found: $duplicates"
fi

echo "Validated $skill_count skill(s)."
