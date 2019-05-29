#/etc/servicesファイルから「80/tcp」の行を抽出する
#cat /etc/services | grep '80/tcp' | grep 'www'
grep 80/tcp /etc/services | sed '2,$d'
