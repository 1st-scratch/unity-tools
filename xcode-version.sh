#!/bin/sh
# https://dive.medium.com/how-to-get-the-current-selected-xcode-and-list-installed-e16278c8c65a

OUTPUT_FILE="xcode-versions.txt"
touch $(pwd)/$OUTPUT_FILE
system_profiler -json SPDeveloperToolsDataType | jq '.SPDeveloperToolsDataType[].spdevtools_path' | sed 's/"//g' > $OUTPUT_FILE
#system_profiler -json SPDeveloperToolsDataType | jq '.SPDeveloperToolsDataType[].spdevtools_apps.spxcode_app' | sed 's/"//g' > $OUTPUT_FILE
cat $(pwd)/$OUTPUT_FILE
