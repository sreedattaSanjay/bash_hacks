#ps aux | sort -nrk 3,3 | head -n 10

while [ true ]
do
    ps aux | sort -nrk 3,3 | head -n 10
    sleep 10
done

