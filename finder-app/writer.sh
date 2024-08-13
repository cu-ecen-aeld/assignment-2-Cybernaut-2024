#!/bin/bash

if [ $# -lt 2 ]
then
    echo arguments missing
    exit 1
else
    writefile=$1
    writestr=$2
    if [ ! $(mkdir -p ${writefile%/*} && touch $writefile) ]
    then      
	    $(echo $writestr > $writefile)  
    else
        echo File can not be created
	exit 1
    fi	
fi

