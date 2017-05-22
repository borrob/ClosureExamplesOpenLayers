#!/bin/bash

java -jar ../compiler-latest/closure-compiler-v20170423.jar \
	--js src/hello.js \
	--js_output_file build/app.js \
	--output_wrapper "(function(){%output%})();//# sourceMappingURL=../app.js.map" \
	--assume_function_wrapper true \
	--create_source_map app.js.map \
	--compilation_level ADVANCED
