#!/bin/bash


########################################
## Directories #########################

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


########################################
## Arguments ###########################

if [ $# -eq 0 ]; then
  COMMIT_MSG="."
else
  COMMIT_MSG=$1
fi


########################################
## Commit changes#######################

echo ""
echo "############################################################"
echo "## Commiting changes and pushing git repo to origin       ##"
echo ""

git -C $ROOT_DIR add .
git -C $ROOT_DIR commit -m $COMMIT_MSG


########################################
## Push git repo #######################

echo ""
echo "############################################################"
echo "## Pushing git repo to origin                             ##"
echo ""

git -C $ROOT_DIR push origin master


echo ""
echo "############################################################"
echo "## Done                                                   ##"
echo ""
