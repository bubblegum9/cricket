#!/bin/bash

# in a 6 count loop
# generates 6 numbers, converts
# them to hex and addes them
# to string named mac with colon's

maclenght=6
mac=""
for ((i=0;i<maclenght;i++))
do
    a_number=$((RANDOM % 256))
    hex=$(printf "%02x" $a_number)
    mac+="$hex"
    mac+=":"
done
mac=${mac::-1}
echo $mac