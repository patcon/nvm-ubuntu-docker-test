#!/usr/bin/env bash

set -euo pipefail

cd /var/www/html/app
nvm install --latest-npm
npm run test
npm run check-path
