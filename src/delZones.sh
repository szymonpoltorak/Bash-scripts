#!/bin/bash

#Script used to delete all Zone Indeitifiers(made when copying files to wsl) and .DS_Store(mac os things) 

while getopts h OPTION; do
    case $OPTION in
        h) echo "Script made to delete :Zone.Identifier and .DS_Store files. Just run script ./delZones" ; exit 0;;
        *) echo "Unkown option! Use -h" ; exit 1 ;;
    esac
done

rm -r $(find ~ -iregex '.*:Zone.Identifier')
rm -r $(find ~ -iregex '.DS_Store')