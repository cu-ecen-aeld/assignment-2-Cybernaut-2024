#!/bin/bash

if [ $# -lt 2 ]
then
    echo Argument/Arguments is/are missing
    exit 1
elif [ ! -d $1  ]
then
    echo Directory does not exist 
    exit 1
else
    word_found=$(grep -o $2 $1/* | wc -l)
    lines_found=$(grep $2 $1/*  | wc -l)
    files_found=$(ls $1/* | wc -l)
   # echo word $2 found "$word_found" times at "$lines_found" lines 
   # echo Total "$files_found" files
   echo The number of files are $files_found and the number of matching lines are $lines_found
fi
