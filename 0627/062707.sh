echo '1.git log 2.gitlog --online 3.git log --oneline --name-only *.exit'
read abc
case "$abc" in
    1)
        git log
        ;;
    2)
        git log --oneline
        ;;
    3)
        git log --oneline --name-only
        ;;
    *)
        echo 'end...'
        ;;
esac
