#!/bin/bash

# The following script will check to see if a file exists or not.

file="./file"
if [ -e $file ]; then
	echo "File exists"
else
	echo "File does not exist"
fi

# Similarly for example we can use while loop to check if file does not exist. This script will sleep until
# file does exist. Note bash negator ! which negates the -e option.

while [ ! -e myfile ]; do
# Sleep until file does exists/is created
sleep 1
done