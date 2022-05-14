#!/bin/bash

#Script used to delete all Zone Indeitifiers(made when copying files to wsl) and .DS_Store(mac os things) 

while getopts hv OPTION;
do
    case $OPTION in
        h) echo "Script made to delete :Zone.Identifier and .DS_Store files. Just run script ./delZones" ;;
        *) echo "Unkown option! Use -h" && exit 1 ;;
    esac
done

rm $(find ~ -iregex '.*:Zone.Identifier')
rm $(find ~ -iregex '.DS_Store')