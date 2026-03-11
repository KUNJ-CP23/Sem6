1.menu driven mathematical operation

#!/bin/bash
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "Enter your choice:"
read ch

echo "Enter first number:"
read a
echo "Enter second number:"
read b

case $ch in
  1) echo "Sum = $((a + b))" ;;
  2) echo "Difference = $((a - b))" ;;
  3) echo "Product = $((a * b))" ;;
  4) echo "Quotient = $((a / b))" ;;
  *) echo "Invalid Choice" ;;
esac

2.