#!/bin/bash

echo $1
echo $2
echo "number of arguments $#"
echo "the args, are $@"

echo "Enter filename"
read filename

if [ -e $filename ]
then
  echo "$filename exists on the directory"
  cat $filename
else
  echo "hello world" > $filename
  echo "File created"
fi