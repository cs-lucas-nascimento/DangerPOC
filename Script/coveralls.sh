#!/bin/sh
slather coverage -x --output-directory Report/slather/xml_report --scheme DangerPOC DangerPOC.xcodeproj
slather coverage -s --scheme DangerPOC DangerPOC.xcodeproj
slather coverage --html --output-directory Report/slather --scheme DangerPOC  DangerPOC.xcodeproj
slather