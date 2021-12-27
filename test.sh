#!/usr/bin/env bash

set -euo pipefail

WORKING_NODE_VERSION=6.x
FAILING_NODE_VERSION=7.0.0

nvm install --no-progress v14
npm install --global npm@${WORKING_NODE_VERSION}

# Debug output
echo '--- Checking bare PATH...'
echo $PATH
echo '--- Checking run-script wrapped PATH...'
npm run check-path

# Run outside npm run-script.
echo '--- This will work!'
node --version
npm --version
# Run inside npm run-script.
echo '--- This will work!'
npm run test

npm install --global npm@${FAILING_NODE_VERSION}

# Debug output
echo '--- Checking bare PATH...'
echo $PATH
echo '--- Checking run-script wrapped PATH...'
npm run check-path

# Run outside npm run-script.
echo '--- This will work!'
node --version
npm --version
# Run inside npm run-script.
echo '--- This will WORK on official container: node!'
echo '--- This will FAIL on official container: debian!'
echo '--- This will FAIL on official container: ubuntu!'
npm run test
