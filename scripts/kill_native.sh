#!/bin/sh

NATIVE_APP=$1

function kill_process () {
    ps axf | grep $1 | grep -v grep | awk '{print "kill -9 " $1}' | sh
}

echo "Killing native app!"

kill_process $NATIVE_APP