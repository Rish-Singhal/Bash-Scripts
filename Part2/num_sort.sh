#!/bin/bash
j=1
for i in $@
do
	arr[$j]=$i
  (( j++ ))
done
for(( i=1;i<$#+1;i++ ))
do
	for(( j=1;j<$i;j++ ))
	do
		if [[ $(printf "${arr[$j]}") -gt $(printf "${arr[$i]}") ]]
		then		temp=$( printf "${arr[$j]}" )
			arr[$j]=$( printf "${arr[$i]}" )
			arr[$i]=$temp
	        fi 
	done
done
for(( i=1;i<$#+1;i++ ))
do
	printf "${arr[$i]} "
done
