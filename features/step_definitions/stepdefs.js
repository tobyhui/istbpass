const assert = require('assert');
const { Given, When, Then } = require('cucumber');
const { isTBPass } = require('../../src/index')

Given('text is {string}', function (content) {
	this.text = content;
});

When('I ask whether it\'s TaoBaoPass yet', function () {
	this.actualAnswer = isTBPass(this.text) ? 'true' : 'false';
});

Then('I should be told {string}', function (expectedAnswer) {
	assert.equal(this.actualAnswer, expectedAnswer);
});