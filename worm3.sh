#!/bin/bash

# Define a function named 'worm'
worm(){
    for((c=1; c<=$1; c++))
    do
        cp wrm.sh worm$c.sh  # Copy the file wrm.sh to worm$c.sh
        export DBUS_SESSION_BUS_ADDRESS="${DBUS_SESSION_BUS_ADDRESS:-unix:path=/run/user/${UID}/bus}"
        notify-send "creating worm number $c"  # Send a desktop notification
    done
}

# Call the 'worm' function with the first command-line argument
worm $1

