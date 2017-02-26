#!/bin/sh
# asks the user if he/she is doing well

echo "Are you OK?"
flag=true

while [ $flag = "true" ]
do
    read userInput
    # variables are recommend to enclosed in double quotes.
    # if not, it will expand to nothing if the varaible has more than one word
    # separated by white space
    if [ "$userInput" = y ] # "$userinput", not $userinput
        then
        echo "glad to hear that"
        #flag = false
        break;
    elif [ "$userInput" = Y ]
        then
        echo "glad to hear that"
        #flag = false
        break;
    elif [ "$userInput" = n ]
        then
        echo "sorry that you are not feeling good"
        #flag = false
        break;
    elif [ "$userInput" = N ]
        then
        echo "sorry that you are not feeling good"
        #flag=false
        break;
    else
        echo "incorrect choice"
    fi
done


# break using the flag is not working.
