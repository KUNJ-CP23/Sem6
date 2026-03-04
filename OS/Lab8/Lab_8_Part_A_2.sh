read -p "Enter 1 Number" n1
read -p "Enter 2 Number" n2

if [[ n1 -eq n2 ]]; then
    echo "Number Is Equal"
else
    if [[ n1 -gt n2 ]]; then
        largest=$n1;
    else
        largest=$n2
        
    fi
    
    echo "Largest number is: $largest"
    if [ $((largest % 5)) -eq 0 ] && [ $((largest % 7)) -eq 0 ]; then
        echo "Largest number is divisible by both 5 and 7"
    elif [ $((largest % 5)) -eq 0 ]; then
        echo "Largest number is divisible by 5"
    elif [ $((largest % 7)) -eq 0 ]; then
        echo "Largest number is divisible by 7"
    else
        echo "Largest number is not divisible by 5 or 7"
    fi
fi
