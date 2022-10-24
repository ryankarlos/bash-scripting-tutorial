#!/bin/bash

# In Bash scripting, a global variable is a variable that can be used anywhere inside the script.
# A local variable will only be used within the function that it is declared in. Check out the
# example below where we declare both a global variable and local variable.


# Define bash global variable
# This variable is global and can be used anywhere in this bash script
VAR="global variable"

function bash {
# Define bash local variable
# This variable is local to bash function only
local VAR="local variable"
echo $VAR
}

echo $VAR
bash
# Note the bash global variable did not change
# "local" is bash reserved word
echo $VAR
