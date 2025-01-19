#!/bin/bash

cd $(dirname "$0")

TIMESTAMP="$(date +%s)"
DATETIME="$(date -u +"%Y-%m-%dT%H:%M:%S%z")"

echo "$TIMESTAMP" > TIMESTAMP
echo "$DATETIME" > DATETIME

git add .
git commit -m "Update to $DATETIME"
git push
git push --tags

