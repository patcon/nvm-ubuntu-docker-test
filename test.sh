#!/usr/bin/env bash

set -euo pipefail

nvm install --latest-npm
npm run test
npm run check-path
