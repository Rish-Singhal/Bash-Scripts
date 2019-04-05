#!/bin/bash
y=$( ls *.txt )
test=0
for i in $y
do
   x=$( grep $1 $i | wc -l )
   printf "$x in $i"
   if [ $x -gt 0 ]
   then
	  test=1
  fi 
done
 if [ $test -eq 1 ]
 then	 exit 0
 else
	 exit 1
 fi
