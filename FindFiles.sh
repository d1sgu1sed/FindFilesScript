#!/bin/bash

if [[ "$#" -ne 2 ]]; then
    echo "Use: $0 <dir> <min_len>"
    exit -1
fi

dir="$1"
min_len="$2"

echo $dir $min_len
