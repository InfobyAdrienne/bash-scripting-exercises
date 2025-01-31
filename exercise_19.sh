# Exercise_19 - Write a shell script that exits on error and displays command as they will execute, including all expansions and substitutions. Use 3 ls command in your script. Make the first one succeed, the second one fail, and third one succeed. If you are using the proper options, the third ls command not be executed.

#!/bin/bash

set -ex

echo "This command will succeed"
ls /nonexistent_directory  # This command fails, so the script exits immediately
echo "This won't be printed"