#!/usr/bin/env bash

set -euo pipefail

nvm install
npm run test
npm run check-path
