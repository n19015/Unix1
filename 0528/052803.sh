#ホームディレクトリ以下(サブディレクトリも含む)にあるファイル及びディレクトリの数をそれぞれ表示する
#ディレクトリ数
#sudo find ~ -type d | wc -l
 ls -lR ~ | grep '^d' | wc -l
#ファイル数
sudo find ~ -type f | wc -l
