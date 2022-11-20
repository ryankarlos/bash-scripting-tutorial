#!/bin/bash

# bash for loop
for a in {1..8}
do
  let "b-$a % 2"
  if [ $b -eq 0 ]; then
    echo "$a is divisible by 2"
  else
    echo "number is $a"
  fi
done

a=0
#Iterate the loop until a less than 10
while [ $a -lt 4 ]
do
  # Print the values
  echo $a
  # increment the value
  let "a++"
done


# bash while loop
a=0

#Iterate the loop until a less than 10
while [ $a -lt 10 ]
do
    # Print the values
    echo $a
    # a=`expr $a + 1`
    let "a+=1"
done

# until loop

a=0
# -gt is greater than operator

#Iterate the loop until a is greater than 10
until [ $a -gt 10 ]
do
    # Print the values
    echo $a
    # increment the value
    a++
done

