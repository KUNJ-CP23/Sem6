#!/bin/bash

read -p "Enter how many numbers: " n

sum=0
i=1

while [ $i -le $n ]
do
    read -p "Enter number $i: " num
    sum=$((sum + num))
    i=$((i + 1))
done

avg=$((sum / n))

echo "Sum = $sum"
echo "Average = $avg"
