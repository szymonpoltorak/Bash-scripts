#!/bin/bash

#Zmień skrypt z cw1.sh tak aby podnosił do kwadratu liczbę podawaną przez użytkownika w 
#linii komend.

for var in "$@"; do
    square=$((var * var))
    echo "$square"
done