# Exercise_16 - Created the start-up script for an application start and stop.

#!/bin/bash

INPUT=$1 # input is the first argument 
APP_ENTRY="app.js"
APP_DIR="/Users/agalloway/workspace/node-app"

cd $APP_DIR

case $INPUT in
  start) 
    node app.js & 
    echo "The node app has started"
    ;;
  stop)
    PID_ID=$(pgrep -f "node $APP_ENTRY") # Get the PID of the running process
    kill $PID_ID
    echo "The node application has stopped"
    ;;
  *) 
    echo "Error input"
    ;;
esac # terminates the case structure
