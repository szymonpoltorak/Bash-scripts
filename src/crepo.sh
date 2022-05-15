#!/bin/bash

git=0
name=project

while getopts "hgn:" OPTION; do
    case $OPTION in
        h) echo "Script made to easily prepare repo for C programming:
        -h - written instruction
        -g - initialize project using git you need git to use it
        -n - after this flag you have to give the name of repository if not given projects folder will be called 'project'" ; 
        exit 0 ;;
        g) git=1 ;;
        n) name=$OPTARG ;;
        *) echo "Unkown option! Use -h" ; exit 1 ;;
    esac
done

mkdir "$name"
mkdir "$name/src"
touch "$name/makefile" "$name/src/main.c"

if [[ $git -eq 1 ]]; then
    touch "$name/.gitignore" "$name/.gitattributes"
    echo "*.o" > "$name/.gitignore"
    cd $name/
    git init
fi