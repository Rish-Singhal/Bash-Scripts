read oper
read n
read s1
sum=$s1
for (( i= 1 ; i < $n ; i++ ))
{
read c
  if [ "$oper" = "+" ]
  then
    sum=$(echo "$sum + $c" | bc -l)
  elif [ "$oper" = "-" ]
   then
     sum=$(echo "$sum - $c" | bc -l)
  elif [ "$oper" = "*" ]
     then
       sum=$(echo "$sum * $c" | bc -l)
  elif [ "$oper" = "/" ]
      then
        sum=$(echo "$sum / $c" | bc -l)

      fi
}
    printf "%0.4f\n" $sum
