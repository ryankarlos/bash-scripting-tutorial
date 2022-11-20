# A Bash Scripting Tutorial I delivered for newcomers

 Bash scripting tutorial you will learn:

* Passing arguments to a Bash script
* global and local variables in Bash
* Reading user input
* compare integers and strings
* for, while, until loops, if and case statements
* functions in Bash
* Bash redirection and piping

### Shell Themes

Install zsh or bash theme by following these instructions:

https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
https://github.com/ohmybash/oh-my-bash


### The Shell

A shell is special user program which provide an interface to user to use operating system services. Shell accept 
human readable commands from user and convert them into something which kernel can understand.

There are several shells are available for Linux systems like –

* BASH (Bourne Again SHell) – It is most widely used shell in Linux systems. It is used as default login shell in 
Linux systems and in macOS. It can also be installed on Windows OS.
* CSH (C SHell) – The C shell’s syntax and usage are very similar to the C programming language.
* KSH (Korn SHell) – The Korn Shell also was the base for the POSIX Shell standard specifications etc.

Usually shells are interactive that mean, they accept command as input from users and execute them. However some 
time we want to execute a bunch of commands routinely.
We can use shell scripts (.sh extension) to we can write these commands in a file and execute  them in shell to 
avoid this repetitive work.
The first line in a shell script is a shebang which is a number sign and an exclamation point character (#!) 
followed by the absolute path to shell executable e.g. #1/bin/bash or #!/bin/zsh etc . When we first create and save
a shell script, we may not be able to execute our shell script immediately because it does not  have permissions. 
We have to make it executable by typing following command. Note executing a script without doing this may also 
work - this is for the case it does not.
```
$ chmod +x path/to/our/file.sh
```

`.bashrc` and `bash_profile`, are shell scripts that Bash shell runs whenever it is started interactively. The purpose 
of a `.bashrc` file is to provide a place where you can set up variables, functions and aliases, define our prompt 
and define other settings that we want to use whenever we open a new terminal window. Both these scripts, need 
to be placed in the home path i.e. $HOME. Confirm this in bash terminal 
```
echo $HOME
```

The shorthand for HOME path is `~`,  so cd `~` in the terminal should take you to the home path which has been set.
The next commands will configure the bashrc to cd into a particular project directory (replace $HOME/path/to/project 
with the path to project you want to `cd` to) and activate a python environment (replace `venv/Scripts/activate` with the
path to the environment you want to activate). Then we source the script to run it within the

```
echo "cd $HOME/path/to/project; source activate <env_name>">> ~/.bashrc
```
We need to `source ~/.bashrc` the first time so any variables, commands run  in the same shell process. If we then close
the shell and open it again - we should see that the commands run automatically and we should be in the desired directory 
with the environment activated.

```
echo "[[ -s ~/.bashrc ]]  && source ~/.bashrc" >> ~/.bash profile # single >> means append to file rather than overwrite > 
echo "cd $HOME/path/to/project; source venv/Scripts/activate">> ~/.bashrc #
source ~/.bashrc
```

Alteratively instead of forcing `~/.bashrc` to automatically run the command we added everytime when we start the shell,
we can also add an alias and later call it in the terminal. Replace >> with dredirection operator if we want to overwrite
the file rather than append.

```
echo 'alias bootcamp="cd /c/Install/modelling; source veny/Scripts/activate" >> ~/.bashrc
```

if you close bash and open again - you should be able to use bootcamp or whatever you had chosen as an alias to run the
respective comma. The advantage with this is - if you are working on multiple projects you can create alias.

### Conditional and Comparison (Int/Str)

Sometimes if we have to check multiple conditions, then it may get complicated using if statements. At those moments
we can use a case-sac statement. Arithmetic operators are used for checking the arithmetic-based conditions. Like less
than, greater than, equals to, etc. Here is a descriptive table with all the operators. In this example first one 
(-eg )is a numeric comparison that checks for equality. The second one (==) is also check for equality but in strings.
Run the first two sections in `conditional_and_str_comparison.sh`

* The string comparison means in the shell scripting we can take decisions by doing comparisons within strings as well.

-n Returns true if the string to be tested is not null
-z  Returns true if the string to be tested is null

Run the string comparison section in `conditional_and_str_comparison.sh`

* Check exit status of previous command. First run a command with 
incorrect syntax  that should fail.

```
exhoe "hello world" 

if [[ $? -eq 0 ]]; 
    then echo "previous command succeeded" ;
fi
```

The snippet above should not output anything as the command previously would
return exit status 1 and hence would skip the conditional block.

Now we will execute a valid command and check exit status is 0. This will echo
message in condition block to stdout.
  
```
echo "hello world"
if [[ $? -eq 0 ]] ; then 
    echo "previous command succeeded" ;
fi
```

### Loops

There are 3 basic loop structures in Bash scripting which have been demonstrated in `loops.sh`.

* The for loop will take each item in the list (in order, one after the other), assign that item 
as the value of the variable var, execute the commands between do and done then go back to the top, grab 
the next item in the list and repeat over.

```
for var in <list>
do
<commands>
done
```

* while an expression is true, keep executing these lines of code. They have the following format:

```
while [ <some test> ]
do
<commands>
done
```

* The until loop is fairly similar to the while loop. The difference is that it will execute the commands within it 
until the test becomes true.

```
until [ <some test> ]
do
<commands>
done
```

### Args and Read Input

In bash, positional arguments are passed to special parameters $1, $2 etc 
depending on the argument number. Run the script  `read_args.sh` with a couple of arguments 
e.g. if you named the script arguments sh, then in git bash if you run ./arguments.sh machine learning, the output will print out each
argument, the number of arguments ($#) and all arguments on a line ($@). For more advanced argument 
parsing checkout getopts online. Input & output are fundamental concepts for shell scripting. A script can take one or more inputs and 
can also produce zero or many outputs. 


### Redirections 

In Linux, each process has three default file descriptors:

1. O represents standard input
2. 1 represents standard output
3. 2 represents standard error

The script `redirections.sh`, shows examples of redirecting standard error and standard output. We can 
also redirect streams  to each other and to files.

To clear out a file, we can use the following command `> filename.txt`

We can send all output to a /dev/null which acts like a blackhole and discards all redirected streams.

```
for i in {13}; do echo $j; done | sort -r &> dev/null
```

### Piping

A unix pipe connects stdout of the first process to stdin of the second.  We can use grep with a regex pattern for 
matching string. For other alternatives of string matching and transformation/substitution - check out sed or for 
more diverse range of built in functions for transformation `awk` https://www.baeldung.com/linux/grep-sed-awk-differences 

```
pip freeze | grep six
pip freeze | tail -2
printf "apple\nwatermelon\norange\norange\npear\nbanana" | sort -r | uniq
```


### Functions and Scope

We can use variables in bash scripting. `functions_and_scope.sh` sample program to understand the usage of variables in Bash scripts.
In this example, var1 is a local variable, so when we are accessing it from the function it returns the value we 
assigned but when we are trying to access it outside the function, it reverts back to its globally assigned value var 2 
is defined before function definition (global scope) and then reassigned inside function. However, notice we havent 
used the local keyword - hence we are mutating the variable in global scope from inside the function. You can confirm 
this by running the snippet below and checking the outputs of the variables before and after the function call.

### Executing bash script in python

We can also run bash commands from python using `subprocess` library  and an alternative for performing high 
level operations on file using python using `shutil`. The bash script `execute file.sh` passes in arguments, 
runs conditional checks to create a dir, tree structure and file, redirects output to file and then renames the file.

The python script `run_bash_job.py` runs the sample bash script above using subprocess library. The script also takes 
a copy of the outfile file using shuti library.

### Common pain points

* Brackets

Brackets in bash can be a pain to remember and easy to mix up (and the error messages most of the time are not very 
helpful) as there are all sorts single and double  paranthesis, single and double curly, single and double square 
to name a few. The reference section has a few good articles on the differences between these but as a  summary:

1. [[]] - if conditional check as i demoed - advantage of using && and Il for checking multiple things e.g. [ $var1 -ea && $var2 true ]
2. [] for single conditional check - to do multiple, you would need to do [ $var1 -ea 1] && [ $var2 == true]
3. () for evaluating variables e.g ${var} - you can also do cool things like computing lengths if var is array ${#var} or
using ranges {1..3} etc as demonstrated in the loops section.
4. (()) for doing arithmetic e.g. $(( var1 + var2 )) and other expressions for writing expressions but only evaluating
in subshells live very rarely had to use this, if never) - ie any variable assignment be reverted or any new variable
created will not be accessible outside the bracket. Here im creating a file1.txt - ive assigned to Z inside single bracket.
But when i try an outside it is empty.  
Single paranthesis is also used to create arrays as described above

* Quotes

In bash there are single, double quotes and backticks - all performing various functionality like expanding variables within string literal, evaluating expressions within
string etc. Here is a good reference https://www.geeksforgeeks.org/bash-script-quotes-and-its-types/

### References 

1. Bash cheat sheets: https://devhints.io/bash and below

2. Brackets: 
- https://7thzero.com/blog/bash-101-part-4-brackets-braces-parenthesis-arithmetic-and-loops
- https://dev.to/rpalo/bash-brackets-quick-reference-4eh6

3. Intro to bash and scripting
- https://www.geeksforgeeks.org/bash-scripting-introduction-to-bash-and-bash-scripting/
- https://linuxconfig.org/bash-scripting-tutorial-for-beginners



