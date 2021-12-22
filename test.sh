#!/usr/bin/env bash

set -euo pipefail

nvm install v14
npm install --global npm@6.x

# Debug output
node --version
npm --version
npm run check-path

# Run outside npm run-script: Should work!
./bin/test-env-node
# Run inside npm run-script: Should FAIL!
npm run test
