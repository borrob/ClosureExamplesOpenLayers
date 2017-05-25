#!/bin/bash

java -jar ../compiler-latest/closure-compiler-v20170423.jar \
	--js src/*.js \
	--js lib/v4.1.1/ol/**.js\
	--js lib/v4.1.1/ol.ext/**.js\
	--entry_point=goog:App.Main \
	--dependency_mode STRICT \
	--define ol.ENABLE_WEBGL=false \
	--js_output_file build/app.js \
	--output_wrapper "(function(){%output%})();//# sourceMappingURL=../app.js.map" \
	--assume_function_wrapper true \
	--create_source_map app.js.map \
	--compilation_level ADVANCED \
