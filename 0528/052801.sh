#/etc/passwdファイルから現在のログインユーザの情報を表示。現在のログインユーザはシェル変数「USER」を参照
grep $USER /etc/passwd
