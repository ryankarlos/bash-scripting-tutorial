# A Bash Scripting Tutorial for Newcomers

In this Bash scripting tutorial you will learn:

* Passing arguments to a Bash script
* global and local variables in Bash
* Reading user input
* read arrays in Bash
* compare integers and strings
* for, while, until loops, if and case statements
* functions in Bash
* quotes and special characters in Bash
* Arithmetic calculations with Bash
* Bash redirection and piping


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


When we first create and save a shell script, we cannot execute our shell script immediately because it does not 
have permissions. We have to make it executable by typing following command –

```
$ chmod +x path/to/our/file.sh
```

`.bashrc` is a shell script that Bash shell runs whenever it is started interactively. 
The purpose of a .bashrc file is to provide a place where you can set up variables, functions and 
aliases, define our prompt and define other settings that we want to use whenever we open a 
new terminal window.

Assume we want to be in specific directory at the root of a project 
when the shell starts and activate a python environment

```
echo "cd $HOME/path/to/project; source activate <env_name>">> ~/.bashrc
```
We need to `source ~/.bashrc` the first time so any variables, commands run 
in the same shell process

### Shell Themes

Install zsh or bash theme byfollowing these instructions:

https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
https://github.com/ohmybash/oh-my-bash