a=$1
l=$(crunch ${#a} ${#a} -p "$a")
for i in $l
do
	command -v $i >/dev/null && echo "yes" && echo $i && echo "Arguments=>"
	command -v $i >/dev/null &&  man $i | col -b 	
done
