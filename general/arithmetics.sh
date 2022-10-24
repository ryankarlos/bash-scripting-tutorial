#!/bin/bash

# Bash can be used to perform calculations. Let’s look at a few examples to see how it’s done.

## Let’s see how to do some basic Bash aritmetics such as addition, subtraction, multiplication, division, etc.


echo '### let ###'
# bash addition
let ADDITION=3+5
echo "3 + 5 =" $ADDITION

# bash subtraction
let SUBTRACTION=7-8
echo "7 - 8 =" $SUBTRACTION

# bash multiplication
let MULTIPLICATION=5*8
echo "5 * 8 =" $MULTIPLICATION

# bash division
let DIVISION=4/2
echo "4 / 2 =" $DIVISION

# bash modulus
let MODULUS=9%4
echo "9 % 4 =" $MODULUS

# bash power of two
let POWEROFTWO=2**2
echo "2 ^ 2 =" $POWEROFTWO


echo '### Bash Arithmetic Expansion ###'
# There are two formats for arithmetic expansion: $[ expression ]
# and $(( expression #)) its your choice which you use

echo 4 + 5 = $((4 + 5))
echo 7 - 7 = $[ 7 - 7 ]
echo 4 x 6 = $((3 * 2))
echo 6 / 3 = $((6 / 3))
echo 8 % 7 = $((8 % 7))
echo 2 ^ 8 = $[ 2 ** 8 ]


echo '### Declare ###'

echo -e "Please enter two numbers \c"
# read user input
read num1 num2
declare -i result
result=$num1+$num2
echo "Result is:$result "

# bash convert binary number 10001
result=2#10001
echo $result

# bash convert octal number 16
result=8#16
echo $result

# bash convert hex number 0xE6A
result=16#E6A
echo $result



# round floating point number

# get floating point number
floating_point_number=3.3446
echo $floating_point_number
# round floating point number with bash
for bash_rounded_number in $(printf %.0f $floating_point_number); do
echo "Rounded number with bash:" $bash_rounded_number
done


# bash floating point calculations

echo "Enter input:"
read userinput
echo "Result with 2 digits after decimal point:"
echo "scale=2; ${userinput}" | bc
echo "Result with 10 digits after decimal point:"
echo "scale=10; ${userinput}" | bc
echo "Result as rounded integer:"
echo $userinput | bc



# arithmetic comparisons


# Bash can compare two or more values, either integers or
# strings, to determine if they are equal to each other, or one is greater than the other, etc.

# -lt	<
# -gt	>
# -le	<=
# -ge	>=
# -eq	==
# -ne	!=

# Now let’s use these operators in some examples.
NUM1=2
NUM2=2
if [ $NUM1 -eq $NUM2 ]; then
	echo "Both values are equal"
else
	echo "Values are NOT equal"
fi



# Let’s try changing one of the numbers.
NUM1=2
NUM2=1
if [ $NUM1 -eq $NUM2 ]; then
	echo "Both Values are equal"
else
	echo "Values are NOT equal"
fi


# Let’s add a little more complexity by including an elif statement and determing which number is larger.

NUM1=2
NUM2=1
if   [ $NUM1 -eq $NUM2 ]; then
	echo "Both values are equal"
elif [ $NUM1 -gt $NUM2 ]; then
	echo "NUM1 is greater than NUM2"
else
	echo "NUM2 is greater than NUM1"
fi