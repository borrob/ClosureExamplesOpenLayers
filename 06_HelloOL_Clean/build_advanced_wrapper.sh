#!/bin/bash

java -jar ../compiler-latest/closure-compiler-v20170423.jar \
	--js src/*.js \
	--js ../05_HelloOL/lib/v4.1.1/ol/**.js\
	--js ../05_HelloOL/lib/v4.1.1/ol.ext/**.js\
	--externs ../05_HelloOL/lib/v4.1.1/externs/*.js \
	--entry_point=goog:App.Main \
	--dependency_mode LOOSE \
	--define ol.ENABLE_WEBGL=false \
	--js_output_file build/app.js \
	--output_wrapper "(function(){%output%})();" \
	--assume_function_wrapper true \
	--compilation_level ADVANCED
