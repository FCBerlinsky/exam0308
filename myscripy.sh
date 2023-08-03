#!/bin/bash
echo "Please enter 5 numbers:"
# Read 5 numbers from the user and store them in the array
rm Outputs/outputs.txt  
for ((i = 0; i < 5; i++)); do
  read -p "Number $((i + 1)): " num
  python3 tofahrenheit.py $num >> Outputs/outputs.txt  
done
