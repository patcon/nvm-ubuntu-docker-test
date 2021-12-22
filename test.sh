#!/usr/bin/env bash

set -euo pipefail

nvm install --no-progress v14
npm install --global npm@6.x

# Debug output
node --version
npm --version
npm run check-path

# Run outside npm run-script.
echo '--- This will work!'
./bin/test-env-node
# Run inside npm run-script.
echo '--- This will work!'
npm run test

npm install --global npm@7.0.0

# Debug output
node --version
npm --version
npm run check-path

# Run outside npm run-script.
echo '--- This will work!'
./bin/test-env-node
# Run inside npm run-script.
echo '--- This will WORK on debian!'
echo '--- This will FAIL on ubuntu!'
npm run test
