#!/bin/bash

# TODO: handle adding hours
#
if [[ $# -gt 2 ]]; then
	echo ""
	echo "incorrect number of arguments"
	echo "this script requires between 0 and 2 inclusive arguments"
	echo "use --help if you need details of what are valid inputs"
	exit 1
fi

seconds=$((5*60))

# if [[ $# -eq 1]];then
# 	# only minutes added
# fi
#
# if [[ $# -eq 2]];then
# 	# no arguments so use default time
# 	echo
# fi

osascript -e "delay $seconds" -e 'display notification "Please take a break" with title "TIME IS UP" sound name "Purr.aiff"' 2>/dev/null & disown 
