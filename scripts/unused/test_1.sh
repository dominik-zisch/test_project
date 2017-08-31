#!/bin/sh

NATIVE_APP='python_test'
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

##### Main

sh $SCRIPT_DIR/test_2.sh $NATIVE_APP