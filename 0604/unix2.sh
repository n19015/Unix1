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
cont
case "$1" in
    *.sh)
        git add -i
        ;;
esac
git status
cont
echo -n 'comment:'
read comment
case "$1" in
    *.sh)
        git commit -m "$comment"
        ;;
esac
git log --online
cont
case "$1" in
    *.sh)
        git push
        ;;
esac
