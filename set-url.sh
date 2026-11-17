#!/usr/bin/env bash
# Usage: ./set-url.sh https://yourname.github.io/repo-name/
# Replaces the placeholder URL in index.html, robots.txt and sitemap.xml.
set -e
[ -z "$1" ] && { echo "Usage: $0 https://your-site-url/"; exit 1; }
HOST_PATH="${1#https://}"; HOST_PATH="${HOST_PATH#http://}"; HOST_PATH="${HOST_PATH%/}"
for f in index.html robots.txt sitemap.xml; do
  sed -i.bak "s#SITE_URL_PLACEHOLDER#${HOST_PATH}#g" "$f" && rm -f "$f.bak"
done
echo "Done. URLs now point to https://${HOST_PATH}/"
