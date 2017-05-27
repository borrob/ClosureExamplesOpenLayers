goog.provide('App.Main');

goog.require('App.Control');
goog.require('App.Map');

/**
 * Initialise the app after loading the entire thing
 *
 * @type {function()}
 */
window.onload = function() {
    App.Control.init();
    var myMap = App.Map;
    myMap.init();
};
