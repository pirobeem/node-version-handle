#!/bin/bash
set -euo pipefail

VERSION=$( node -e "console.log(require('./package.json').version)" )
echo $VERSION
