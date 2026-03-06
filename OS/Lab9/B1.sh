#!/bin/bash

echo "Enter first number:"
read start

echo "Enter second number:"
read end

i=$start

while [ $i -le $end ]
do
    if [ $((i % 2)) -eq 0 ] && [ $((i % 3)) -ne 0 ]
    then
        echo $i
    fi
    i=$((i + 1))
done