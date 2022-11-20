#!/bin/bash


# --- redirecting stdout to file -------

echo "Hello world" > redirections.txt # or can use 1> as well
# append to end of file
echo "something more" >> redirections.txt
# overwrite file
echo "overwrite everything" > redirections.txt


# --- redirecting stderr to file -------

# add incorrect syntax mkdire instead of mkdir

mkdire -p test/something >> redirections.txt 2>1

# or this
mkdire -p test/something 2>> redirections.txt
# why does just this not work
mkdire -p something/blah >> redirections.txt


