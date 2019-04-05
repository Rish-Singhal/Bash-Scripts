#!/bin/bash
for(( i=1;i<11;i++ ))
do
temp=$(( i*i ))
	echo $temp
done
echo 

for(( i=1;i<11;i++ ))
do
 temp=1
for(( j=1;j<i+1;j++ ))
 do
 temp=$(( temp*i ))
done
echo $temp
done
echo
n=101
i=0
j=1
cnt=2
while [ $(( $n-$cnt )) -gt 0 ]
do
k=$(( i+j ))
i=$j
j=$k
(( m=k%2 ))
if [ $m -eq 1 ]
then
echo $k
fi
 (( cnt++ ))
done
