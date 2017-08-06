#!/bin/bash

##### Functions

function startNative
{
    python /home/dominik/Dropbox/programming/00\ NEW/01_bash/auto_update/test_project/python_test.py $(tty)
}

##### Main

while true; do

    echo "Restarting native app!"
    startNative
    echo "Main app ended... restarting..."
    echo "-----------------------------------"
    read -t 2 -p "Restarting the native app in 2 seconds. Press <CTRL>+c to stop."
    echo "-----------------------------------"

done 

