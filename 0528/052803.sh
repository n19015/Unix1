#ホームディレクトリ以下(サブディレクトリも含む)にあるファイル及びディレクトリの数をそれぞれ表示する
#ディレクトリ数
 ls -la ~ | grep '^d' | wc -l
#ファイル数
find ~ -type f 2>/dev/null | wc -l
