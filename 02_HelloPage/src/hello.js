function getOutput() {
	var outString = document.getElementById('helloNameInput').value;
	return outString;
}

function setString(str) {
	document.getElementById('output').innerHTML = str;
}

function doAction() {
	var inputString = getOutput();
	setString(inputString);
}

function init() {
	document.getElementById('laatMaarZienButton').addEventListener('click', doAction);
}

window.onload = function() {
	init();
}
