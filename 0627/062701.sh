mkdir -p dir1/dir2/dir3
cd dir1/dir2
touch file{01..05}
cd dir3
touch file{06..10}
cd ../..
tree
cd ..
rm -r dir1

