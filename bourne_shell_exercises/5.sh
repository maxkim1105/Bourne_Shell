#!/bin/sh

echo enter your color
read color

case $color in
  Bl*)  # anything begins with Bi
  echo the sky color is $color
  ;;
  bl*)
  echo the sky color is $color
  ;;
  red)
  echo the sun is sometimes this $color
  ;;
  yellow)
  echo the sun is sometimes this $color
  ;;
  *)  # anything else
  echo the $color is not in any of the categories defined.
esac
