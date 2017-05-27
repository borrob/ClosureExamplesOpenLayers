goog.provide('App.Map');

goog.require('ol.Map');
goog.require('ol.View');
goog.require('ol.layer.Tile');
goog.require('ol.source.OSM');

/**
 * Initialise the map
 *
 * Add the OSM layer to the view and center the view to NL
 *
 * @type {function() }
 */
App.Map.init = function() {
    App.Map.map = new ol.Map({
        target: 'map',
        layers: [
            new ol.layer.Tile({
                source: new ol.source.OSM()
            })
        ],
        view: new ol.View({
            center: [620000, 6732600],
            zoom: 7
        })
    });
};
