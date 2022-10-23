# The .bashrc file is a script file that’s executed when a user logs in. The file
# itself contains a series of configurations for the terminal session. This includes
# setting up or enabling: coloring, completion, shell history, command aliases, and more.

# export PATH=PathOfYourChoice:$PATH


today()
{
    echo This is a `date +"%A %d in %B of %Y (%r)"` return
}


mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}


alias wmi='whoami'


export ZSH_THEME="af-magic"
