#!/bin/sh

mon=$1 tue=$2 wed=$3 thu=$4 fri=$5 sat=$6 sun=$7
echo $@
echo $tue $wed $thu $fri $sat $sun
echo $wed $thu $fri $sat $sun
echo $thu $fri $sat $sun
echo $fri $sat $sun
echo $sat $sun
echo $sun

