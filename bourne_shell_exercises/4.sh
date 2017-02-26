#!/bin/sh

# CAREFUL date is not enclosed within single quotes.. It's using ` `, not ' '.

var=`date`
echo $var

for i in $var
do
  echo $i
done


# command not found
