#!/usr/bin/env bash
set -u

echo "===== AIPAYWORLDS PUBLIC REPOSITORY SECURITY GATE v1 ====="

FAIL=0

fail() {
  echo "BLOCK: $1"
  FAIL=1
}

echo
echo "===== 1. GIT STATE ====="
git rev-parse --show-toplevel >/dev/null 2>&1 || {
  echo "BLOCK: not inside a Git repository"
  exit 1
}

echo "ROOT: $(git rev-parse --show-toplevel)"
echo "BRANCH: $(git branch --show-current)"
echo "HEAD: $(git rev-parse HEAD)"

echo
echo "===== 2. FORBIDDEN TRACKED FILES ====="

while IFS= read -r file; do
  case "$file" in
    .env|.env.*)
      [ "$file" = ".env.example" ] || fail "tracked environment file: $file"
      ;;
    *.pem|*.key|*.p12|*.pfx)
      fail "tracked private/credential file: $file"
      ;;
    *seed*|*mnemonic*|*password*|*credential*|*secret*)
      fail "suspicious tracked filename: $file"
      ;;
  esac
done < <(git ls-files)

echo
echo "===== 3. PRIVATE-DIRECTORY CHECK ====="

while IFS= read -r file; do
  case "$file" in
    private/*|confidential/*|secrets/*|credentials/*|wallet/*|backups/*|backup/*)
      fail "tracked private directory: $file"
      ;;
  esac
done < <(git ls-files)

echo
echo "===== 4. SECRET-LIKE CONTENT CHECK ====="

PATTERN='(-----BEGIN (RSA|EC|OPENSSH|DSA|PRIVATE) KEY-----|AKIA[0-9A-Z]{16}|gh[pousr]_[A-Za-z0-9_]{20,}|github_pat_[A-Za-z0-9_]{20,}|xox[baprs]-[A-Za-z0-9-]{20,}|sk-[A-Za-z0-9]{20,}|0x[a-fA-F0-9]{64}|(seed[_-]?phrase|mnemonic)[[:space:]]*[:=][[:space:]]*[A-Za-z0-9 ,._-]{16,}|(api[_-]?key|private[_-]?key|secret[_-]?key|password)[[:space:]]*[:=][[:space:]]*[^[:space:]#]{16,})'

while IFS= read -r file; do
  [ -f "$file" ] || continue

  case "$file" in
    .env.example)
      continue
      ;;
  esac

  if grep -IEniE "$PATTERN" "$file" >/dev/null 2>&1; then
    fail "secret-like content detected: $file"
  fi
done < <(git ls-files)

echo
echo "===== 5. STAGED CONTENT CHECK ====="

while IFS= read -r file; do
  [ -n "$file" ] || continue

  case "$file" in
    .env.example)
      continue
      ;;
  esac

  if git show ":$file" 2>/dev/null | grep -IEniE "$PATTERN" >/dev/null 2>&1; then
    fail "secret-like content detected in staged file: $file"
  fi
done < <(git diff --cached --name-only --diff-filter=ACMR)

echo
echo "===== 6. RESULT ====="

if [ "$FAIL" -eq 0 ]; then
  echo "PASS: no known public-repository security violations detected."
  exit 0
else
  echo "BLOCK: public repository security gate failed."
  echo "Do not publish or push until the findings are reviewed."
  exit 1
fi
