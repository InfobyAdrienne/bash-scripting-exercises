# Exercise_11 - Write a script that executes the command “cat/etc/shadow”. If the command return a 0 exit status, report “command succeeded” and exit with a 0 exit status. If the command returns a non-zero exit status, report “Command failed” and exit with a 1 exit status.

#!/bin/bash
cat /etc/shadow
if [ $? -eq 0 ]; then
    echo "command succeeded"
    exit 0
elif [ $? -ne 0 ]; then
    echo "command failed"
    exit 1
fi