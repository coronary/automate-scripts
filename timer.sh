#!/bin/bash

# TODO: handle adding hours

function quitter {
	echo ""
	echo "incorrect number of arguments"
	echo "this script requires between 0 and 2 inclusive arguments"
	echo "use --help if you need details of what are valid inputs"
	exit 1
}

seconds=0

function add_minutes {
	seconds=$(($seconds + $1*60))
}

function add_seconds {
	seconds=$(($seconds + $1))
}

if [[ $# -gt 2 ]];then
	# incorrect number of arguments
	quitter
fi

if [[ $# -eq 1 ]];then
	# only minutes added
	add_minutes $1
fi

if [[ $# -eq 2 ]];then
	# minutes and seconds passed
	add_minutes $1
	add_seconds $2
	echo
fi

echo "timer set for $seconds seconds"
osascript -e "delay $seconds" -e 'display notification "Please take a break" with title "TIME IS UP" sound name "Sosumi.aiff"' 2>/dev/null & disown 
