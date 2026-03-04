#!/bin/bash

read -p "Enter 1st number: " a
read -p "Enter 2nd number: " b
read -p "Enter 3rd number: " c
read -p "Enter 4th number: " d

if [ "$a" -gt "$b" ] && [ "$a" -gt "$c" ] && [ "$a" -gt "$d" ]; then
    echo "$a is the largest number"
elif [ "$b" -gt "$c" ] && [ "$b" -gt "$d" ]; then
    echo "$b is the largest number"
elif [ "$c" -gt "$d" ]; then
    echo "$c is the largest number"
else
    echo "$d is the largest number"
fi
