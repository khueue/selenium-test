#!/usr/bin/env bash

# Exit on error.
set -o errexit

# Force fresh download.
# rm -rf ./node_modules/selenium-standalone/.selenium

# Bump these when you feel like it.
SELENIUM_VERSION=2.45.0
CHROMEDRIVER_VERSION=2.14

echo
echo "--- Installing test toolchain ..."

./node_modules/.bin/selenium-standalone install \
	--version=${SELENIUM_VERSION} \
	--drivers.chrome.version=${CHROMEDRIVER_VERSION}

# Create generic symbolic link.
ln -sf \
	${SELENIUM_VERSION}-server.jar \
	./node_modules/selenium-standalone/.selenium/selenium-server/selenium-server.jar

# Create generic symbolic link.
ln -sf \
	${CHROMEDRIVER_VERSION}-x64-chromedriver \
	./node_modules/selenium-standalone/.selenium/chromedriver/chromedriver
