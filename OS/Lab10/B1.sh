#!/bin/bash

echo "Enter value of n:"
read n

sum=0

for (( i=1; i<=n; i++ ))
do
    square=$((i * i))
    sum=$((sum + square))
done

echo "Sum of series is: $sum"