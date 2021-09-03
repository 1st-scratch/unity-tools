#!/bin/sh

OUTPUT_FILE="versions.txt"
touch $(pwd)/$OUTPUT_FILE
/Applications/Unity\ Hub.app/Contents/MacOS/Unity\ Hub -- --headless editors --installed | cut -f 1 -d "," > $OUTPUT_FILE
echo "---- version info ----"
cat $(pwd)/$OUTPUT_FILE
