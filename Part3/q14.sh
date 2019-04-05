#!/bin/bash
echo "<html>"
echo "<head><title>FILES TABLE</title></head>"
echo "<body>"
echo "<table border=1>"
tasty=$(find . -type d| grep -vF '/.')
for j in $tasty
do
test=$(ls -lh $j |awk '{print $9 ":" $5 ":" $1}' )
echo "<tr><th colspan=3>$j</th>"
echo "<tr><th>Name</th><th>Size</th><th>File/Dir</th></tr>"
for i in $test
do
	a=$(echo $i |cut -d":" -f1 )
	b=$(echo $i|cut -d":" -f2 )
	echo "<tr><td>"$a"</td><td>"$b"</td>"
	if [ -d $(echo $i |cut -d":" -f1) ]
	then		test="Dir"
	else
		test="File"
	fi
	echo "<td>"$test"</td></tr>"
done
done
