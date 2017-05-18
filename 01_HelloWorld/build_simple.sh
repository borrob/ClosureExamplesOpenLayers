#!/bin/bash

java -jar ../compiler-latest/closure-compiler-v20170423.jar \
	--js src/hello.js \
	--js_output_file build/app.js
