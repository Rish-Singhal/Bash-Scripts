#!/bin/bash
if [ $# -eq 1 ]
then

if [ -f $1 ]
then
	chmod u+x $1
else
	echo "Regular File ($1)  does not exist"
fi

else 
	echo "Pass 1 Argument!"
fi


