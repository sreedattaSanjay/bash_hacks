ps aux | awk '{print $2, $4, $11}' | sort -k2rn | head -n 20

