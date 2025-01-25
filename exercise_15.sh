# Exercise_15 - Write the script that renames files based on the file extension. Next,It should ask the user what prefix to prepend to the file name(s). By default, the prefix should be the current date in YYYY-MM-DD format. If the user simply press enter,the current date will be used. Otherwise,whatever the user entered will be used as the prefix. Next,it should display the original file name and new name of the file. Finally,it should rename the file.

#!/bin/bash
DAY=$(date +%F)

cd /Users/agalloway/Pictures

for FILE in *.jpg
 do
    read prefix
    if [ -z "$prefix" ] || [ "$prefix" = $DAY ]; then
      echo $FILE 
      echo $DAY-${FILE}
      mv $FILE ${DAY}-${FILE}
    else 
      echo $FILE
      echo "$prefix"-${FILE}
      mv $FILE "$prefix"-${FILE}
    fi
 done