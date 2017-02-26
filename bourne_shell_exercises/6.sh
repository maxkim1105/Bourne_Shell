#!/bin/sh

a=0

while [ $a -le 9 ]
do
  echo $a
  a=`expr $a + 1`   # NOT SINGLE QUOTES. USING BACKTICKS ` `
                    # $a = expr.... no no... $ is not used for assginment
done
