#!/bin/sh

if [ $# -ne 2 ]; then
	exit 1
fi

if [ ! -d "$1" ]; then
	exit 1
fi

filesCnt=$(find "$1" -type f | wc -l)
matchCnt=$(grep -r "$2" "$1" | wc -l)

echo "The number of files are $filesCnt and the number of matching lines are $matchCnt"

exit 0