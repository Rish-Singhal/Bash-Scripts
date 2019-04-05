#!/bin/bash
x=$( grep -Ev "^$" $1 )
j=1
for i in $x
   do
	   echo "$j)$i"
	   (( j++ ))
   done

