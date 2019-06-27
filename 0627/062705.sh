echo '大晦日まで'$(echo "`date -d 12/31 +%j`-`date +%j`" | bc)日
