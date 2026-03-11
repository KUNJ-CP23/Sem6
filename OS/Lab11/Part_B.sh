1.

#!/bin/bash
echo "Enter month number (1-12):"
read m

case $m in
  1|3|5|7|8|10|12) echo "31 Days" ;;
  4|6|9|11) echo "30 Days" ;;
  2) echo "28 or 29 Days" ;;
  *) echo "Invalid Month" ;;
esac


2. even odd

#!/bin/bash
echo "Enter a number:"
read n

case $((n % 2)) in
  0) echo "Even Number" ;;
  1) echo "Odd Number" ;;
esac

3.number to words

#!/bin/bash
echo "Enter a number (1-5):"
read n

case $n in
  1) echo "One" ;;
  2) echo "Two" ;;
  3) echo "Three" ;;
  4) echo "Four" ;;
  5) echo "Five" ;;
  *) echo "Out of Range" ;;
esac


