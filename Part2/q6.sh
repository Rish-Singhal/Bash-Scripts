#!/bin/bash
read msal
av=$(( $msal*12 ))
if test $av -le 300000 
then	echo "NO TAX PAYMENT REQUIRED"
else
	(( tax=av*3 ))
	printf  "TAX PAYMENT REQUIRED: %0.4f" $(echo "$tax/10" | bc -l)	

fi

