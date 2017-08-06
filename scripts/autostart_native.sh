#!/bin/bash

NATIVE_APP='python_test'
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

##### Main

sh $SCRIPT_DIR/start_native.sh $NATIVE_APP &
sleep 10
sh $SCRIPT_DIR/check_for_updates.sh $NATIVE_APP &