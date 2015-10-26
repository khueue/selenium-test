#!/usr/bin/env bash

# Exit on error.
set -o errexit

npm run test-install

rm -rf ./test/generated
mkdir -p ./test/generated

echo
echo "--- Running integration tests ..."
exec nightwatch --env chrome,firefox

