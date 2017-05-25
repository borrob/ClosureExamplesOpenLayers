#!/bin/bash

java -jar ../compiler-latest/closure-compiler-v20170423.jar \
	--js src/*.js \
	--js lib/v4.1.1/ol/**.js\
	--js lib/v4.1.1/ol.ext/**.js\
	--entry_point=goog:App.Main \
	--dependency_mode STRICT \
	--define ol.ENABLE_WEBGL=false \
	--define ol.DEBUG=false \
	--js_output_file build/app.js \
	--compilation_level ADVANCED
