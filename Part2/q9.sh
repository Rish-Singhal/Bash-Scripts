#!bin/bash
echo Enter Your Name:
read name
echo Enter Your Birth Date in YYYY-MM-DD Format:
read bdate
date=$( date +%F )
year=`echo $date | cut -d "-" -f1`
month=`echo $date | cut -d "-" -f2`
day=`echo $date | cut -d "-" -f3`
byear=`echo $bdate | cut -d "-" -f1`
bmonth=`echo $bdate | cut -d "-" -f2`
bday=`echo $bdate | cut -d "-" -f3`
if test $bday -eq $day -a $bmonth -eq $month
then
	(( age=$year-$byear ))
	echo "Happy Birthday, $name. You are $age years old today!"
fi
