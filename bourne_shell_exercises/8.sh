#!/bin/sh

a=$1
b=$2

if [ $a -le $b ]
then
  small=$a
else
  small=$b
fi

while [ $small -ne 0 ]
  do
    x=`expr $a % $small`
    y=`expr $b % $small`
  if [ $x -eq 0 -a $y -eq 0 ]
  then
    echo gcd: $small
    break
  fi
  small=`expr $small - 1`
done
