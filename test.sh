#!/usr/bin/env bash

set -euo pipefail

nvm install v14.18.1 --latest-npm
npm run test
npm run check-path
