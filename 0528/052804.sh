#/varディレクトリ以下(サブディレクトリも含む)にあるファイルの容量の多い上位5件を表示する
 ls -la 2>/dev/null $(find /var -type f 2>/dev/null) | sort -nr -k 5 | head -n 5
