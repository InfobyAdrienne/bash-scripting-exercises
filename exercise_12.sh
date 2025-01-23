# Exercise_12 - Write a shell script that consists of a function that displays the number of files in the present working directory. Name this function “file_count” and call it in your script. If you use variable in your function, remember to make it a local variable.

#!/bin/bash

file_count () {
    local NUMBER_OF_FILES=$(ls -l | wc -l | awk '{print $1 - 1}')
    echo "$NUMBER_OF_FILES"
}

file_count

