#!/bin/bash


########################################
## Directories #########################

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


########################################
## Pull git repo #######################

echo ""
echo "############################################################"
echo "## Pulling git repo from origin                           ##"
echo ""

git -C $ROOT_DIR pull origin master


echo ""
echo "############################################################"
echo "## Done                                                   ##"
echo ""
