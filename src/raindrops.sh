#!/bin/bash

args=$#

for i in $(seq $args); do
    result=""

    if [[ $(($i % 7)) -eq 0 ]]; then
        result+="Plong"
    fi
    if [[ $(($i % 5)) -eq 0 ]]; then
        result+="Plang"
    fi
    if [[ $(($i % 3)) -eq 0 ]]; then
        result+="Pling"
    fi
    echo ${result:-$i}
done