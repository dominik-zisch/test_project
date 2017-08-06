#!/bin/sh

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git -C $ROOT_DIR fetch

LOCAL=$(git -C $ROOT_DIR rev-parse HEAD)
REMOTE=$(git -C $ROOT_DIR rev-parse origin/master)

if [ $LOCAL = $REMOTE ]; then
    echo "Up-to-date"
else
    echo "Need to pull"

    # kill autostart
    #ps axf | grep autostart_native | grep -v grep | awk '{print "kill -9 " $1}' | sh

    # kill nativeapp
    #ps axf | grep python_test | grep -v grep | awk '{print "kill -9 " $1}' | sh

    #git pull origin master

    echo "Updated native app."
fi

