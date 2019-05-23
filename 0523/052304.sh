ls -R /home | grep -v ^\s*$ | sort -r | head -n 5 | rev | cut -d / -f 1 | rev
