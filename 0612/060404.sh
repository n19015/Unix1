#!/bin/bash

usage()
{

  local script_name=$(basename "$0")

  cat << END
使い方: $script_name DIRPATH...
DIRPATHで指定したディレクトリ下の読み取り不可ファイルの一覧表示
DIRPATH-読み取り不可ファイルの一覧表示を行うディレクトリパスを指定
END
}

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

if [ -d "$1" ]; then
    find $1 -maxdepth 1 -and -type f -not -perm -a=r
else
    echo "$1: ディレクトリではありません"
fi
