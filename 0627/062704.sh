find /home -type f 2>/dev/null | xargs du -b 2>/dev/null | sort -nr |head -n 5
