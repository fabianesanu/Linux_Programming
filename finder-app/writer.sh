#!/bin/sh
# assignment 2
# Author: Fabian Esanu

if [ $# -ne 2 ]; then
   echo "Error: Two arguments required: <full path to file> <string to write>"
    exit 1
fi

writefile=$1
writestr=$2

dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"
if [ $? -ne 0 ]; then
   echo "Error: Could not create directory path '$dirpatch'"
   exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
   echo "Error: Could not write to file '$writefile'"
   exit 1
fi

exit 0

