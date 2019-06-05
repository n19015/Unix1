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
    *)
        git add -i
        ;;
esac
git status
cont
echo -n 'comment:'
read comment
case "$1" in
    *)
        git commit -m "$comment"
        ;;
esac
git log --online
cont
case "$1" in
    *)
        git push
        ;;
esac
