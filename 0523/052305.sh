#/etc ディレクトリ以下のファイルについて「172.16.40.1」の記述があるファイル名の一覧を表示する
find /etc -type f 2> /dev/null | xargs grep -l '172.16.40.1' 2> /dev/null
