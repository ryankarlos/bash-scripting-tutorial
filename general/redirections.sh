#!/bin/bash

### Redirections
# In the following examples, we will show how to redirect standard error and standard output.

# STDOUT from bash script to STDERR

echo "Redirect this STDOUT to STDERR" 1>&2
./redirecting.sh

./redirecting.sh > STDOUT.txt
cat STDOUT.txt

./redirecting.sh 2> STDERR.txt
cat STDERR.txt

# STDERR from bash script to STDOUT

cat $1 2>&1
./redirecting.sh /etc/shadow
./redirecting.sh /etc/shadow > STDOUT.txt
cat STDOUT.txt
./redirecting.sh /etc/shadow 2> STDERR.txt
cat STDERR.txt

# stdout to screen
touch file1
ls file1

# stdout to file
ls file1 > STDOUT
cat STDOUT

# stderr to file
ls file2
ls file1 file2 2> STDERR
cat STDERR


# stdout to stderr

ls
ls file1 file2 2> STDERR_STDOUT 1>&2
cat STDERR_STDOUT

# stderr to stdout

ls
ls file1 file2 > STDERR_STDOUT 2>&1
cat STDERR_STDOUT
