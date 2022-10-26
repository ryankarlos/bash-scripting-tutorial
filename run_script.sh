#!/bin/zsh

FIRST_ARG=${1:-true}

WORKING_DIR=$(pwd)
DIR_PATH="$WORKING_DIR/data/files"

echo""
echo "Script working directory $WORKING_DIR"

if [[ "${FIRST_ARG}" -eq true ]];then
  echo ""
  printf "Creating new dir structure and files in  %s\n" "${DIR_PATH}"
  mkdir -p $DIR_PATH
  cd $DIR_PATH
  touch file1.txt
  echo "$(pwd)"
fi;


if [[ $?  == 0 && $DIR_PATH ==  $(pwd) ]];then
  echo ""
  echo "add stuff to file.txt"
  echo ""
  echo "The date is `date`"  &> file1.txt || exit
  printf "file1.txt contents:\n%s\n\n" "$(cat file1.txt)"
  echo "Moving file1 to file2"
  mv file1.txt file2.txt || exit
fi;
