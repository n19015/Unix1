#/varディレクトリ以下(サブディレクトリも含む)にあるファイルの容量が0のファイルをすべて表示する
 ls -la 2>/dev/null $(find /var -type f -size 0 2>/dev/null) | sort -nr -k 5
