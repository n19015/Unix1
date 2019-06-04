#!/bin/bash

if [ -d "$1" ]; then
    a= ls $1
    if [ ! -r "$a" ]; then
        echo $a
else
    echo "$1: ディレクトリではありません"
fi
fi
