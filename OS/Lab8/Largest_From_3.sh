read -p "Enter 1 Number:" n1
read -p "Enter 2 Number:" n2
read -p "Enter 3 Number:" n3

if [[ n1 -gt n2 ]] && [[ n1 -gt n3 ]]; then
    echo "$n1 is largest"
    
elif [[ n2 -gt n3 ]]; then
    echo "$n2 is largest"
else
    echo "$n3 is largest"
fi


