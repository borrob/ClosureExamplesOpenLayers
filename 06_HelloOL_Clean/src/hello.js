goog.provide('App.Main');

goog.require('App.Control');
goog.require('App.Map');

window.onload = function() {
	App.Control.init();
	var myMap = App.Map;
	myMap.init();
};
