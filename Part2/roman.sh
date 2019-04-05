#!/bin/bash
num=$1
roman()
{
	i=$3
	value=$1
	rom=$2
	let "remainder = i -value"
	while [ $remainder -ge 0 ]
	do
		   echo -n $rom
		   (( i -= value ))
		   (( remainder = i - value ))
	   done
	   return $i
   }
# roman 1000 M $num
# num=$?
# roman 900 CM $num
# num=$?
# roman 500 D $num  
# num=$?
# roman 400 CD $num
# num=$?
 roman 100 C $num
 num=$?
 roman 90 XC $num
 num=$?
 roman 50 L $num
 num=$?
 roman 40 XL $num
 num=$?
 roman 10  X $num
 num=$?
 roman 9 IX $num
 num=$?
 roman 5 V $num
 num=$?
 roman 4 IV $num
 num=$?
 roman 1 I $num
 echo

