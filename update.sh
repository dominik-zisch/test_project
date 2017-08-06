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