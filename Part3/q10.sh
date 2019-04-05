#!/bin/bash
pow ()
{
pow1=$1
for(( j=1;j<$2;j++ ))
do
 (( pow1=$pow1*$1 ))
done
echo $pow1
return $pow1
}
exp=$1
shift
for i in $@
do
  exp=$( pow exp $i )
done
echo $exp  
