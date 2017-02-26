#!/bin/sh

echo "enter a number"
read num
n=`expr $num % 2`
if [ $n -eq 0 ]
then
echo “even”
else
echo “odd”
fi
