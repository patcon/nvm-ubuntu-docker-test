#!/usr/bin/env bash

set -euo pipefail

cd /var/www/html/app
nvm install 14 --latest-npm
npm run test
npm run check-path
