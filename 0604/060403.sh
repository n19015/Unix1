#!/bin/bash

if [ -d "$1" ]; then
    ls -F $1 | grep '*$'
else
    echo "$1: ディレクトリではありません"
fi
