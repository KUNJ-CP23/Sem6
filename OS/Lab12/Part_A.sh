#!/bin/bash

while true
do
    echo "-----------------------------"
    echo "        MAIN MENU"
    echo "-----------------------------"
    echo "1. Display calendar of current month"
    echo "2. Display today's date and time"
    echo "3. Display usernames currently logged in"
    echo "4. Display your name at given x, y position"
    echo "5. Display your terminal number"
    echo "6. Exit"
    echo "-----------------------------"
    echo -n "Enter your choice [1-6]: "
    read choice

    case $choice in
        1)
            echo "Calendar of Current Month:"
            cal
            ;;
        2)
            echo "Today's Date and Time:"
            date
            ;;
        3)
            echo "Users currently logged in:"
            who
            ;;
        4)
            echo -n "Enter X position (row): "
            read x
            echo -n "Enter Y position (column): "
            read y
            echo -n "Enter your name: "
            read name
            tput cup $x $y
            echo "$name"
            ;;
        5)
            echo "Your terminal number:"
            tty
            ;;
        6)
            echo "Exiting program..."
            exit 0
            ;;
        *)
            echo "Invalid choice! Please select between 1-6."
            ;;
    esac

    echo
    read -p "Press Enter to continue..."
    clear
done
