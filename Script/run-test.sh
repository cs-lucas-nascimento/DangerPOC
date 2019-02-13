#!/bin/sh
# xcodebuild \
# 	-project Coveralls-iOS.xcodeproj \
# 	-sdk iphonesimulator \
# 	-target Coveralls-iOSTests \
# 	-configuration Debug \
# 	clean build \
# 	ONLY_ACTIVE_ARCH=NO \
# 	TEST_AFTER_BUILD=YES \
# 	GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
# 	GCC_GENERATE_TEST_COVERAGE_FILES=YES
set -o pipefail && xcodebuild -project DangerPOC.xcodeproj -scheme DangerPOC -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone XR,OS=12.1' -enableCodeCoverage YES clean build-for-testing test | xcpretty -r "html" -o "Report/build.html"

