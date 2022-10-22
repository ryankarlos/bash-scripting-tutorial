#!/bin/bash

# Quotations and quotes are important part of bash and bash scripting. Here are some bash quotes and quotations basics.

#Escaping Meta characters

# Before we start with quotes and quotations we should know something about escaping meta characters.
# Escaping will suppress a special meaning of meta characters and therefore meta characters will
# be read by bash literally. To do this we need to use backslash \ character. Example:

BASH_VAR="Bash Script"

# echo variable BASH_VAR
echo $BASH_VAR

#when meta character such us "$" is escaped with "\" it will be read literally
echo \$BASH_VAR

# backslash has also special meaning and it can be suppressed with yet another "\"
echo "\\"

# single quotes

BASH_VAR="Bash Script"

# echo variable BASH_VAR
echo $BASH_VAR

# meta characters special meaning in bash is suppressed when  using single quotes
echo '$BASH_VAR  "$BASH_VAR"'


# double quotes

#Declare bash string variable
BASH_VAR="Bash Script"

# echo variable BASH_VAR
echo $BASH_VAR

# meta characters and its special meaning in bash is
# suppressed when using double quotes except "$", "\" and "`"

echo "It's $BASH_VAR  and \"$BASH_VAR\" using backticks: `date`"


# string comparisons


# =	equal
# !=	not equal
# <	less then
# >	greater then
# -n s1	string s1 is not empty
# -z s1	string s1 is empty


# Let’s try comparing two strings to see if they are equal.
#Declare string S1
S1="Bash"
#Declare string S2
S2="Scripting"
if [ $S1 = $S2 ]; then
	echo "Both Strings are equal"
else
	echo "Strings are NOT equal"
fi


# And again with both string matching.

#Declare string S1
S1="Bash"
#Declare string S2
S2="Bash"
if [ $S1 = $S2 ]; then
	echo "Both Strings are equal"
else
	echo "Strings are NOT equal"
fi