#!/bin/bash
set -euo pipefail

PACKAGE_JSON="package.json"
VERSION=$(cat $PACKAGE_JSON \
  | grep '"version"' \
  | awk -F: '{ print $2 }' \
  | sed 's/[", ]//g'
)
echo $VERSION
