'use strict';

var APP_ROOT = 'http://localhost:6500';
var DEFAULT_WAIT_MS = 1000;

var tests = {};

tests['My first test'] = function (browser) {
	browser
	.url(APP_ROOT)
	.waitForElementVisible('h1', DEFAULT_WAIT_MS)
	.assert.containsText('h1', 'Hello World!')
	.end();
};

module.exports = tests;
