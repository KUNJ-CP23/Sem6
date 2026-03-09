#!/bin/bash
echo "Enter n:"
read n

a=0
b=1

echo "$a"
echo "$b"

for ((i=3; i<=n; i++))
do
  c=$((a + b))
  echo "$c "
  a=$b
  b=$c
done
echo