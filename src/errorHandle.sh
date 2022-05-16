#!/bin/bash

args=$#

if [[ args -eq 1 ]]; then
    echo "Greetings User!"
else
    echo "ERROR OCURRED!" 1>&2
    exit 10
fi
