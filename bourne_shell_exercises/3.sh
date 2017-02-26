#!/bin/sh

#echo "enter your score"
#read score

if [ $1 -le 60 ]
then
  echo "you failed"
elif [ $1 -le 70 ]
then
  echo "You got D"
elif  [ $1 -le 80 ]
then
  echo "Youg got C"
elif  [ $1 -le 90 ]
then
  echo "Youg got B"
elif [ $1 -le 100 ]
then
  echo "You got A"
  #exit
else
  echo "ERROR: not a score"
  exit 1
fi
