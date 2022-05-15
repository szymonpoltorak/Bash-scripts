#!/bin/bash

while getopts h OPTION; do
    case $OPTION in
        h) echo "Script made to make update process faster. Remember to run it with sudo permission" ; exit 0;;
        *) echo "Unkown option! Use -h" ; exit 1 ;;
    esac
done

apt -y update
apt -y upgrade
apt -y autoremove
