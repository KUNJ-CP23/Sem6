#!/bin/bash
echo "Enter Gender (M/m/F/f):"
read g

case $g in
  M|m) echo "Male" ;;
  F|f) echo "Female" ;;
  *) echo "Invalid Input" ;;
esac
