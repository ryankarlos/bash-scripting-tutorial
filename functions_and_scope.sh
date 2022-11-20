#!/bin/bash

var1="foo" #global variable
var2="spam" # global variable


function func1
{
  local var1
  var1="bar"
  var2="ham"
  echo $var1 #bar
}

echo $var2 #ham

function func2
{
  echo "hello world"
}

function call_func
{
  if [[ $1 == "function 1" ]]; then
    func1
  elif [[ $1 == "function 2" ]]; then
    func2
  else
    echo "you need to pass either 'function1' or 'function2"
  fi
}


# check vars
echo $var1 #foo
echo $var2 #spam

func2
# calling function will return assigned values of var1 and var2:
# bar
# ham

# now check variables again
# we see that var1 value reverted back to global assignment after function call
# whereas var2 global value was reassigned in func
echo $var1 #foo
echo $var2 #ham
