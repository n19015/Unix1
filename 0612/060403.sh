#!/bin/bash

usage()
{

 local script_name=$(basename "$0")

 cat << END
使い方: $script_name DIRPATH...
DIRPATHで指定したディレクトリ下の実行可能ファイルの一覧表示
DIRPATH-実行可能ファイルの一覧表示を行うディレクトリパスを指定
END
}

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

if [ -d "$1" ]; then
    ls -F $1 | grep '*$'
else
    echo "$1: ディレクトリではありません"
fi
