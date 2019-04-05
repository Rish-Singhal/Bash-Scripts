#!/bin/bash
read d
echo "choose format:"
echo "1.MM/DD/YYY"
echo "2.DD-MM-YYYY"
read n
case $n in 
  1)
 echo $( date -d "$d" +"%m/%d/%Y" )
  ;;
 2)
echo $(date -d "$d" +"%d-%m-%Y")
 ;;
esac

