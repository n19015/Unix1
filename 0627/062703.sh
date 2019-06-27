#!/bin/bash

usage()
{

  local script_name=$(basename "$0")

  cat << END
使い方: $script_name DIRPATH
DIRPATHで指定したディレクトリ下のファイル数/ディレクトリ数を表示
DIRPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定
END
}

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

if [ -d "$1" ]; then
    echo -n "file =>"&&find $1 -type f 2> /dev/null | wc -l
    echo -n "directory =>"&&find $1 -type d 2> /dev/null | wc -l
else
    echo "$1:はディレクトリではありません"
fi
