mkdir -p stuff
cat $1 | jq --slurp '.[].content' | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*" | sort -u | grep '.jpg\|.png' | xargs wget --directory-prefix=stuff --no-clobber --no-check-certificate
