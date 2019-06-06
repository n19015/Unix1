function cont() {
echo -n 'continue(y/n)'
read yesno
if [ $yesno = 'n' ]; then
    echo 'end...'
    exit
fi
echo 'continue...'
}
cd $HOME/repo/unix1
git status
while :
do
echo 'a.git add-i b.git commit c.git push *.exit'
read a
case "$a" in
    a)
        git add -i
        git status

        ;;
   b)
        echo -n 'comment:'
        read comment
        git commit -m "$commentii"
        git log --online

        ;;
    c)
        git push

        ;;
    *)
        exit
        ;;
esac
done
