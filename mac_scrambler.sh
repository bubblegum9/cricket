#!/bin/bash

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

sudo ip link set dev wlp3s0 down
sudo ip link set dev wlp3s0 address "$mac"
sudo ip link set dev wlp3s0 up