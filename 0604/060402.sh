#!/bin/bash

for file in $@
do
    if [ -f "$file" ]; then
        wc -c < $file
    else
        echo "$file : 通常のファイルではありません"
    fi
done
