#!/bin/bash
if [ "$1" == "write" ]
then
       echo "$2,$3,$4" >> employee.txt
       echo Done
fi
if [ "$1" == "read" ]
then
	n=$3
	if [ "$2" == "eno" ]
	then
		cat employee.txt | awk -F, -v var="$n" '($1==var)'
	elif [ "$2" == "name" ]
	then
		cat employee.txt | awk -F, -v var="$n" '($2==var)'
	elif [ "$2" == "salary" ]
	then
		cat employee.txt | awk -F, -v var="$n"  '($3==var)'
	fi
fi
if [ "$1" == "update" ]
then
	a=$2
	b=$3
	c=$4
	awk -F, -v d="$a" -v e="$b" -v f="$c" '($1==d){$2=e;$3=f;}1' OFS=, employee.txt > tmp && mv tmp employee.txt
echo Done
fi

if [ "$1" == "delete" ]
then
	a=$2
	awk -F, -v var="$a" '$1 != var' employee.txt > tmp && mv tmp employee.txt
    echo Done
fi
if [ "$1" == "duplicate" ]
then
	sort employee.txt | uniq -d
fi

