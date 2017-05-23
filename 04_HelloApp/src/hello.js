goog.provide('App.Main');

goog.require('App.Control');

window.onload = function() {
	var myApp = App.Control();
	myApp.init();
};
