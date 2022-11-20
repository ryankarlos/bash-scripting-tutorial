#!/bin/bash

A=${1:-true}
B=${2:-true}
C=$(3-1)}
D=${4:-python}


### conditional checks

if [[ $A == true && $B == true ]]; then
  echo "į like this session"
else
  echo "hate this"
fi;


if [[ C -eq 1 ]]; then
  echo equal
fi;


## case statements

case $D in
  python) echo "python" ;;
  java) echo "java" ;;
  javascript) echo "javascript" ;;
esac


# string comparison

VAR1=""
VAR2="something"

if [[ -n $VAR1 ]]; then
  echo "$VAR1 is null"
fi;

if [[ -z $VAR2 ]]; then
  echo "$VAR2 is not null"
fi;
