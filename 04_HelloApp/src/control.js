goog.provide('App.Control');

goog.require('App.Settings');

App.Control = function() {
	
	var s = App.Settings();
	
	var control = {};

	var getOutput = function() {
		var outString = document.getElementById(s.input)['value'];
		return outString;
	};

	var setString = function(str) {
		document.getElementById(s.output).innerHTML = str;
	};

	var doAction = function() {
		var inputString = getOutput();
		setString(inputString);
	};

	control.init = function() {
		console.log(s.input + 3);
		document.getElementById(s.button).addEventListener('click', doAction);
	};

	return control;
};

