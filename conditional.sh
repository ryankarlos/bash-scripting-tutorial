#!/bin/bash


echo -e "Enter three colours separated by spaces e.g blue green yellow? "
# -a makes read command to read into an array
read -a colours
echo "My favorite colours are also ${colours[0]}, ${colours[1]} and ${colours[2]}:-)"

if [ $colours == 'yellow' ]; then
  echo "this is yellow"
elif [ $colours == 'green' ]; then
  echo "this is green"
elif [ $colours == 'blue' ]; then
  echo "this is blue"
else
  echo "some other colour"
fi;


# --- int equality check ------------

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


## ------ string equality test --------

#Declare string S1
S1="Bash"
#Declare string S2
S2="Bash"

# =	equal
# !=	not equal
# <	less then
# >	greater then
# -n s1	string s1 is not empty
# -z s1	string s1 is empty

if [ $S1 = $S2 ]; then
	echo "Both Strings are equal"
else
	echo "Strings are NOT equal"
fi


# ----- The following script will check to see if a file exists or not.-------

echo "pass in file path"

read file

if [ -e $file ]; then
	echo "File exists"
else
	echo "File does not exist"
fi


#------ case statements -------------

echo "What is your preferred programming / scripting language"
echo "1) bash"
echo "2) perl"
echo "3) phyton"
echo "4) c++"
echo "5) I do not know !"
read case;
#simple case bash structure
# note in this case $case is variable and does not have to
# be named case this is just an example
case $case in
    1) echo "You selected bash";;
    2) echo "You selected perl";;
    3) echo "You selected phyton";;
    4) echo "You selected c++";;
    5) exit
esac
