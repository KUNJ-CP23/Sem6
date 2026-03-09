#!/bin/bash
echo "Enter Number:"
read num

flag=0

for ((i=2; i<=num/2; i++))
do
    if [ $((num % i)) -eq 0 ]; then
        flag=1
        break
    fi
done

if [ $num -le 1 ]; then
    echo "Not Prime"
elif [ $flag -eq 0 ]; then
    echo "Prime"
else
    echo "Not Prime"
fi
