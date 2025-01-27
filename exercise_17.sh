# Exercise_17 - Write the shell script that displays one random number on the screen and also generates a system log message with that random number.Use the “user” facility and “info” facility for your messages.

#!/bin/bash
MESSAGE="The random number generated was: $RANDOM"
echo $MESSAGE
logger -p user.info "$MESSAGE"
# log show --predicate 'process == "logger"' --info
# Above used to view logs and make sure it's worked