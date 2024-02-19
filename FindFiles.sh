#!/bin/bash

if [[ "$#" -ne 2 ]]; then
	echo "Use: $0 <dir> <min_len>"
    	exit -1
fi

dir="$1"
min_len="$2"

find "$dir" -type f | while read -r file; do
    	filename=$(basename "$file")
	filename="${filename%.*}"
    	if [[ ${#filename} -ge $min_len ]]; then
        	echo "$file"
    	fi
done | sort > list_files.txt

echo "Saved to list_files.txt"
