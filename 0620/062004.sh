mkdir a0b1c2d
cd a0b1c2d
wget --spider -o ./index.html -r -p $1
cat index.html | grep '2[0-9]' | grep -B 1 'Not Found'
cd ..
rm -r a0b1c2d
