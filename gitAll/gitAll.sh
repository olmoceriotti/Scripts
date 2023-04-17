#!/usr/local/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color
if [[ -z $1 ]]; then
  echo -e "${RED}Failed: provide a commit message${NC}"
else
  git add .
  git commit -m "\""$1"\""
  git push -f origin main
fi
