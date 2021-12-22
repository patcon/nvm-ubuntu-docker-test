#!/usr/bin/env bash

set -euo pipefail

cd /var/www/html/app
nvm install 14
npm run test
