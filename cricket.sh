#!/bin/bash

input=$(gum choose "scramble mac")
if [ "$input" = "scramble mac" ]; then
    while true; do
        if ! source ./mac_scrambler; then
            echo meow
        fi
    done
fi

# doesnt work cuz it cant find the script
# even though they are in the same dir
# maybe make the script a function instead