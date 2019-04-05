#!/bin/bash
x=$( users | wc -w )
y=$( awk -F':' '{print $1}' /etc/passwd | wc -l  )
echo "$x OUT OF $y USERS ARE ONLINE RIGHT NOW"

