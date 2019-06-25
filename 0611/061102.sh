#echo '5/7から'$(echo "`date -d 5/7 +%j`-`date +%j`" |bc)日
a=`date +%s`
b=`date -d 5/7 +%s`
c=`echo $(((a-b)/60/60/24))`
echo '5/7から'$c'日目'
