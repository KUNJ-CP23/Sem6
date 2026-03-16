#!/bin/bash
echo "Enter file name:"
read file

lines=$(wc -l < "$file")
echo "Number of lines = $lines"
