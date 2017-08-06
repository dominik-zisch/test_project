#!/usr/bin/python

import sys
import signal
import time


##================================================================================//
##-----------------------------------------------------------------// Signal handler

#------------------------------------------/
#---/ signal handler - cleanup
def signal_handler( signal , frame ):
    global running
    running = False
    

##-----------------------------------------------------------------// Signal handler
##--------------------------------------------------------------------------------//



##================================================================================//
##-------------------------------------------------------------// Main program logic

if __name__ == '__main__':

    # add signal handler for SIGINT
    signal.signal( signal.SIGINT , signal_handler )

    running = True
    while (running):
        print( "Hello World!" )
        time.sleep(1)

    print( 'Closing program!' )
    sys.exit(0)

##-------------------------------------------------------------// Main program logic
##--------------------------------------------------------------------------------//
