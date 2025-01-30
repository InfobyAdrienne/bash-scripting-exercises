# Exercise_18 - Modify the previous script so that it uses a logging function. Additionally, tag each syslog message with “randomly” and include process ID. Generate a 3 random numbers.

#!/bin/bash

log_function () {
  MESSAGE="The random number generated was: $RANDOM"
  echo $MESSAGE
  logger -i -p user.info "$MESSAGE" 
}

log_function 
log_function 
log_function
