#!/bin/sh
# Usage: perform multiple operations
# two integer arugments are needed from the command line

# check the number of command line arguments
if [ $# -ne 2 ]
then
    echo "please enter 2 commnad line arguments"
    echo "you entered $# arguments"
    exit
fi

# initialize variables
flag="true" ; flag2="true"
# stores the command line arguments in x and y
x=$1 ; y=$2
echo x is $x, y is $y

while [ ${flag} = "true" ] ; do
    # displays the options
    echo "Add the numbers (enter a or A)"
    echo "Subtract the numbers (enter s or S)"
    echo "Multiply the numbers (enter m or M)"
    echo "Divide the numbers (enter d or D)"
    echo "Exit (select e or E)"
    read input

    # check user's iput
    if [ "${input}" = "a" ] || [ "${input}" = "A" ] ; then
        result=`expr ${x} + ${y}`
    elif [ "${input}" = "s" ] || [ "${input}" = "S" ] ; then
        result=`expr ${x} - ${y}`
    elif [ "${input}" = "m"  ] || [ "${input}" = "M" ] ; then
        result=`expr ${x} \* ${y}`  # "*" needs to be excaped
    elif [ "${input}" = "d" ] || [ "${input}" = "D" ] ; then
        result=`expr ${x} \/ ${y}`   # "/" needs to be excaped
    elif [ "${input}" = "e" ] || [ "${input}" = "E" ] ; then
        exit
    else
        echo "it is not a choice. pleas choose again."
        flag2="false"
    fi
    # displays the result, depending on which operation was performed
    echo ${result}

    # asks a user if he/she wasnts to continue with the same integers -
    # or different integers
    if [ "${flag}" = "true" ] ; then
        echo "do you want to do another operation with the same two integers? (enter s or S) "
        echo "do you want to do another operatoin with two differnet integers? (enter d or D)"
        read input
        if [ "${input}" = "s" ] || [ "${input}" = "S" ] ; then
            echo " "
        elif [ "${input}" = "d" ] || [ "${input}" = "D" ] ; then
            echo "enter the left operand"
            read leftOpe
            x=`expr ${leftOpe}`
            echo "enter the right operand"
            read rightOpe
            y=`expr ${rightOpe}`
        fi
    fi
done

