#!/bin/bash

#Napisz skrypt, który wyliczy wyrażenie 2*(8-(3*2))/((5^2)-15) i wyświetl wynik z dokładnością 
#do 3 miejsc po przecinku

#wymagany jest program bc

x=$(echo "scale=3; 2*(8-(3*2))/((5^2)-15)" | bc)

echo $x