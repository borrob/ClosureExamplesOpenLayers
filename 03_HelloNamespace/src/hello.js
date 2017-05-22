var App = App || {};
App.Control = App.Control || {};

App.Control = function() {
	
	var control = {};

	var getOutput = function() {
		var outString = document.getElementById('helloNameInput').value;
		return outString;
	};

	var setString = function(str) {
		document.getElementById('output').innerHTML = str;
	};

	var doAction = function() {
		var inputString = getOutput();
		setString(inputString);
	};

	control.init = function() {
		document.getElementById('laatMaarZienButton').addEventListener('click', doAction);
	};

	return control;
};

window.onload = function() {
	var myApp = App.Control();
	myApp.init();
};
