#!/bin/bash

FIRST_ARG=${1:-true}
SECOND_ARG=${2:-30}

ARRAY=${@}
echo "Args passed are ${ARRAY}"
WORKING_DIR=$(pwd)
DIR_PATH="$WORKING_DIR/test/files"

echo""
echo "Script working directory $WORKING_DIR"

if [[ "${FIRST_ARG}" -eq true ]];then
  echo ""
  echo "Creating new dir structure and files in ${DIR_PATH}"
  mkdir -p $DIR_PATH
  cd $DIR_PATH
  touch file1.txt
  echo "$(pwd)"
fi;


if [[ $?  == 0 && $DIR_PATH ==  $(pwd) ]];then
  echo ""
  echo "add stuff to file.txt"
  echo ""
  printf "The date is $(date) and number is \n%s" "$(for i in {1..4}; do echo "$i:$SECOND_ARG"; done)" 1> file1.txt || exit
  printf "file1.txt contents:\n%s\n\n" "$(cat file1.txt)"
  echo "Moving file1 to file2"
  mv file1.txt file2.txt || exit
fi;

cd "$WORKING_DIR" || exit
python read_file.py