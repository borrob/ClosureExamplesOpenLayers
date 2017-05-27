goog.provide('App.Control');

goog.require('App.Settings');

var s = App.Settings;

/**
 * Get the user input
 *
 * @private
 * @return {string}
 */
var getOutput_ = function() {
    var outString = document.getElementById(s.input)['value'];
    return outString;
};

/**
 * Set the string to the output-div
 *
 * @private
 * @param {string} str The string to put into the div
 */
var setString_ = function(str) {
    document.getElementById(s.output).innerHTML = str;
};

/**
 * Perform all actions when the button is clicked
 *
 * @private
 */
var doAction_ = function() {
    var inputString = getOutput_();
    setString_(inputString);
};

/**
 * Initialise the controls of the app
 *
 * Connects the action to the button
 *
 * @type {function()}
 */
App.Control.init = function() {
    document.getElementById(s.button).addEventListener('click', doAction_);
};
