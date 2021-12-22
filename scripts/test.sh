#!/usr/bin/env bash

set -euo pipefail

#setup nvm
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

cd /var/www/html/app
nvm install --latest-npm
npm run test
npm run check-path
