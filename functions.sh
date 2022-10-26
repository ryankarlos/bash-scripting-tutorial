#!/bin/bash

# Define bash global variable
# This variable is global and can be used anywhere in this bash script
VAR1="global variable1"
VAR2="global variable2"
echo -e "What are your favorite colours ? "
# -a makes read command to read into an array
read -a colours
echo "My favorite colours are also ${colours[0]}, ${colours[1]} and ${colours[2]}:-)"

# BASH FUNCTIONS CAN BE DECLARED IN ANY ORDER
function function_B {
      # Define bash local variable
      # This variable is local to bash function only
      local VAR1="local variable"
      echo $VAR1
      VAR2="global variable"
      echo $VAR2
}
function function_A {
        echo function_B
}

function function_C {
        echo $1
}

# Check the values of VAR1 and VAR2. These are unchanged as values assigned in global scope
echo $VAR1 # global variable1
echo $VAR2 # global variable2


# Call function_A which calls function_B. This should return the values assigned within
# the function_B

# local variable
# global variable
function_A

# Pass parameter to function c
function_C "call function C"



# Now check the values of VAR1 and VAR2 again. Note that VAR1 did not change but VAR2 did.
# We can assign to variable VAR2 in global scope from within function_B local context
# However, VAR1 was assigned with local keyword and hence the value reverts back
# to what was assigned in global scope
echo $VAR1 #global variable1
echo $VAR2 #global variable

