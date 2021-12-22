#!/usr/bin/env bash

set -euo pipefail

cd /app
nvm install --latest-npm
npm run test
npm run check-path
