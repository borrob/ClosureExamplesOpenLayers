#!/bin/bash

java -jar ../compiler-latest/closure-compiler-v20170423.jar \
	--js src/*.js \
	--entry_point=goog:App.Main \
	--js_output_file build/app.js \
	--output_wrapper "(function(){%output%})();" \
	--assume_function_wrapper true \
	--compilation_level ADVANCED
