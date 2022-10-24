#!/bin/bash

# In Bash scripting, a global variable is a variable that can be used anywhere inside the script.
# A local variable will only be used within the function that it is declared in. Check out the
# example below where we declare both a global variable and local variable.

# Define bash global variable
# This variable is global and can be used anywhere in this bash script
VAR1="global variable1"
VAR2="global variable2"

function func1 {
# Define bash local variable
# This variable is local to bash function only
local VAR1="local variable"
echo $VAR1

VAR2="global variable"
echo $VAR2
}

# Check the values of VAR1 and VAR2. These are unchanged as values assigned in global scope
echo $VAR1 # global variable1
echo $VAR2 # global variable2

# execute function.
func1
# This should return the values assigned within the function

# local variable
# global variable


# Check the values of VAR1 and VAR2. Note that VAR1 did not change but VAR2 did.
# We can assign to variable VAR2 in global scope from within function local context
# However, VAR1 was assigned with local keyword and hence the value reverts back
# to what was assigned in global scope
echo $VAR1 #global variable1
echo $VAR2 #global variable
