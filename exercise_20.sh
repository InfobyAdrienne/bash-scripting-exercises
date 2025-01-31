# Exercise_20 - Modify the previous exercise so that script continuous, even if an error occurs. This time, all three ls command will execute.

#!/bin/bash

set -x

echo "This command will succeed"
ls /nonexistent_directory  # This command fails, so the script will continue
echo "This will still be printed"