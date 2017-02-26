#!/bin/sh
# get factorial and summation

getSummation() {
  n=0
  nmax=$1
  sum=0
  while [ $n -le $nmax ]
  do
    sum=`expr $sum + $n`
    n=`expr $n + 1`
  done
  echo sum: $sum
}

getFactorial(){
  n=1
  nmax=$1
  factorial=1
  while [ $n -le $nmax ]
  do
  factorial=`expr $factorial \* $n`
  n=`expr $n + 1`
  done
  echo factorial: $factorial
}

echo enter a number between 1 and 10
read int
echo userinput $int
getSummation $int
getFactorial $int
