x=$(lscpu)
no_of_cores=0
trial=0
for i in $x
do
    if [ $trial = "4" ]; then
        ((trial=0))
        no_of_cores=$i
    fi
    
    if [ $i = "Core(s)" ]; then
        ((trial+=1))
    fi
    if [ $i = "per" ]; then
        ((trial+=1))
    fi
    if [ $i = "socket:" ]; then
        ((trial+=1))
    fi
    
done

echo "your cpu contains $no_of_cores cores"