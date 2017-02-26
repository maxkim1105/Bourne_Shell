#!/bin/sh

do_square(){
  square=`expr $1 \* $1`  #BACKSLASH is needed! don't let '*' be a wildcard
  echo $square
}

do_square $1
