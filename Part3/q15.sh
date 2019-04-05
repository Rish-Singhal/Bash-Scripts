read a 
read b
read out_file 

furl=`elinks -dump $a | sed 's/\.//g;s/\(.*\)/\L\1/;s/\ /\n/g'| sort -nr | uniq -c | awk '{print $2" "$1}' > $out_file`
surl=`elinks -dump $b | sed 's/\.//g;s/\(.*\)/\L\1/;s/\ /\n/g'| sort -nr | uniq -c | awk '{print $2" "$1}' > tmp && mv tmp $out_file`
 


