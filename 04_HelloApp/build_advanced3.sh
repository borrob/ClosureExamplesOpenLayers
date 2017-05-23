#!/bin/bash

java -jar ../compiler-latest/closure-compiler-v20170423.jar \
	--js src/*.js \
	--entry_point=goog:App.Main \
	--js_output_file build/app.js \
	--output_wrapper "(function(){%output%})();//# sourceMappingURL=../app.js.map" \
	--assume_function_wrapper true \
	--create_source_map app.js.map \
	--compilation_level ADVANCED \
	--jscomp_error=accessControls \
	--jscomp_error=ambiguousFunctionDecl \
	--jscomp_error=checkEventfulObjectDisposal \
	--jscomp_error=checkRegExp \
	--jscomp_error=checkTypes \
	--jscomp_error=checkVars \
	--jscomp_error=commonJsModuleLoad \
	--jscomp_error=conformanceViolations \
	--jscomp_error=const \
	--jscomp_error=constantProperty \
	--jscomp_error=deprecated \
	--jscomp_error=deprecatedAnnotations \
	--jscomp_error=duplicateMessage \
	--jscomp_error=es3 \
	--jscomp_error=es5Strict \
	--jscomp_error=externsValidation \
	--jscomp_error=fileoverviewTags \
	--jscomp_error=functionParams \
	--jscomp_error=globalThis \
	--jscomp_error=internetExplorerChecks \
	--jscomp_error=invalidCasts \
	--jscomp_error=misplacedTypeAnnotation \
	--jscomp_error=missingGetCssName \
	--jscomp_error=missingOverride \
	--jscomp_error=missingPolyfill \
	--jscomp_error=missingProperties \
	--jscomp_error=missingProvide \
	--jscomp_error=missingRequire \
	--jscomp_error=missingReturn \
	--jscomp_error=msgDescriptions \
	--jscomp_error=newCheckTypes \
	--jscomp_error=nonStandardJsDocs \
	--jscomp_error=missingSourcesWarnings \
	--jscomp_warning=reportUnknownTypes \
	--jscomp_error=suspiciousCode \
	--jscomp_error=strictModuleDepCheck \
	--jscomp_error=typeInvalidation \
	--jscomp_error=undefinedNames \
	--jscomp_error=undefinedVars \
	--jscomp_error=unknownDefines \
	--jscomp_error=unusedLocalVariables \
	--jscomp_error=unusedPrivateMembers \
	--jscomp_error=uselessCode \
	--jscomp_error=useOfGoogBase \
	--jscomp_error=underscore \
	--jscomp_error=visibility \
	--jscomp_warning=lintChecks
