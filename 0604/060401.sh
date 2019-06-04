#!/bin/bash

#if [ -f "$1" ]; then
#    echo $1 | rev | cut -d '/' -f1 | rev && echo ":" && wc -c < $1
#else
#    echo "$1: 通常のファイルではありません"
#fi
if [ -f "$1" ]; then
    wc -c < $1
else
    echo "$1: 通常のファイルではありません"
fi
