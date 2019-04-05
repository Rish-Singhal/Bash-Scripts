#!/bin/bash
for(( i=$1;i>0;i-- ))
do
	tput setaf $i
	ping -c1 google.com | head -n1 | while read endloop; do echo "$(date) : $endloop"; done
done
tput setaf 7
