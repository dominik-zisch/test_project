#!/bin/sh

git fetch

LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse origin/master)

if [ $LOCAL = $REMOTE ]; then
    echo "Up-to-date"
else
    echo "Need to pull"
    git pull origin master
fi

echo "done"


# kill nativeapp
#ps axf | grep python_test | grep -v grep | awk '{print "kill -9 " $1}' | sh

# kill autostart
#