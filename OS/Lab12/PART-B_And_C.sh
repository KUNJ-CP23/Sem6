PART-b

#!/bin/bash

echo "Enter username:"
read user

if id "$user" >/dev/null 2>&1
then
    echo "User is valid."
else
    echo "User does not exist."
fi


#!/bin/bash

echo "Total users in system:"
total=$(cut -d: -f1 /etc/passwd | wc -l)
echo $total

echo "Currently logged in users:"
logged=$(who | wc -l)
echo $logged


pART - c


#!/bin/bash
  

# Get current date
today=$(date +"%d-%m-%Y")

# Get time in 12-hour format with a.m./p.m.
time=$(date +"%I:%M:%S %p")

# Get hour in 24-hour format for greeting logic
hour=$(date +"%H")

if [ $hour -ge 5 ] && [ $hour -lt 12 ]
then
    msg="Good Morning"
elif [ $hour -ge 12 ] && [ $hour -lt 17 ]
then
    msg="Good Afternoon"
elif [ $hour -ge 17 ] && [ $hour -lt 21 ]
then
    msg="Good Evening"
else
    msg="Good Night"
fi

echo "Date : $today"
echo "Time : $time"
echo "$msg"

#!/bin/bash

echo "===== Executable Files ====="
find . -type f -executable

echo
echo "===== Directories ====="
find . -type d

echo
echo "===== Zero Sized Files ====="
find . -type f -size 0

