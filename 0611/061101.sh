#echo '夏休みまで'$(echo "`date -d 9/1 +%j`-`date +%j`" |bc)日
a=`date +%s`
b=`date -d 9/1 +%s`
c=`echo $(((b-a)/60/60/24))`
echo '夏休みまであと'$c'日'
