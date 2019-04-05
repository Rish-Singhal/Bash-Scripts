#!/bin/bash
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $1 " " $5}'| while read output;
do 
   usep=$(echo $output | awk '{ print $2}'| cut -d'%' -f1 )
   mem=$(echo $output | awk ' { print $1}' )
    if [ $usep -ge $1 -a $usep -le $2 ]
then 
      echo "WARNING, $mem, $usep%"
   elif [ $usep -ge $2 ]
then 
   echo "CRITICAL, $mem, $usep%"
  else
  echo "OK, $mem, $usep%"
 
  fi
done

