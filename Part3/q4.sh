#!/bin/bash
min=$(cat $1 | awk '{print $1}')
hr=$(cat $1 | awk '{print $2}')
dom=$(cat $1 | awk '{print $3}')
mon=$(cat $1 | awk '{print $4}')
dow=$(cat $1 | awk '{print $5}')
echo "$min $hr $dom $mon $dow"
test=1
if [ "$min" != "*" ]
then
	if [ $min -lt 0 ]||[  $min -gt 59 ]
	then
		test=0
	fi
fi
if [ "$hr" != "*" ]
then
	if [ $hr -lt 0 ]||[ $hr -gt 23 ]
	then 
		test=0
	fi
fi
if [ "$dom" != "*" ]
then    
	        if [ $dom -lt 1 ]||[ $dom -gt 31 ]
			        then    
					                test=0
							        fi      
							fi      
if [ "$mon" != "*" ]
then    
        if [ $mon -lt 1 ]||[ $mon -gt 12 ]
	        then    
		                test=0
			        fi      
			fi      
if [ "$dow" != "*" ]
then    
	        if [ $dow -lt 0]||[ $dow -gt 6 ]
			        then    
					                test=0
							        fi      
							fi     
cmmd=$(cat $1| awk '{$1=$2=$3=$4=$5="";print}')
testy=0
command -v $cmmd > /dev/null && testy=1
if [ $test -eq 1 ]&&[ $test -eq 1 ]
then
	test=1
else
	test=0
fi

case $test in
	1) echo Yes ;;
	0) echo No ;;
esac

