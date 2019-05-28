#/etc/servicesファイルから「80/tcp」の行を抽出する
grep 80/tcp /etc/services | sed '2,$d'
