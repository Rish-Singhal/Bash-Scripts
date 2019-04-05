#!/bin/bash
i=1
j=$1
len=$((${#j} + 1))
(( mid=len/2 ))
shopt -s nocasematch 
while [ $i -lt $mid ]
do
 if [[ "$( echo $1 | cut -c$i )" != "$( echo $1 | cut -c$(($len-$i)))" ]]
then   
 echo "No"
    exit
 fi
 (( i++  ))
done
echo "Yes"
