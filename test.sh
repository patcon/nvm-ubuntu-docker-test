#!/usr/bin/env bash

set -euo pipefail

nvm install
npm install --global npm@6.x

# Debug output
node --version
npm --version
npm run check-path

# Run outside npm run-script
./bin/test-env-node
# Run inside npm run-script
npm run test
