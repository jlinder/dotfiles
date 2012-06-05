# On OS X, where to look for other env values:
#
# ~/.MacOSX/environment.plist
# That file is a plist containing env information.  Use the 'defaults' command to
# read/write values in this file.  ex:
#
#   defaults read ~/.MacOSX/environment
#


# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# Set the command prompt.
case `whoami` in
root)
   export PS1='\[\e[0;34m\][\[\e[1;30m\]\D{%y/%m/%d} \t\[\e[0;34m\]] \[\e[1;30m\]\! \[\e[0;33m\]\w\n\[\e[0;31m\]\u@\h\[\e[m\] \[\e[0;31m\]\$ \[\e[m\]\[\e[0;32m\]'
    ;;
*)
    export PS1="\[\e[0;34m\][\[\e[1;30m\]\D{%y/%m/%d} \t\[\e[0;34m\]] \[\e[1;30m\]\! \[\e[0;36m\]\u@\h \[\e[0;33m\]\w\n\[\e[0;37m\]\$ \[\e[0m\]"
    ;;
esac

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac


# Setting extended pattern matching.
shopt -s extglob

# Set the history time format
export HISTTIMEFORMAT='%a %T '

# don't put duplicate successive lines in the history. See bash(1) for more options
#export HISTCONTROL=ignoreboth
export HISTCONTROL=ignorespace

export HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Set which commands are appended to the history file.
#export HISTIGNORE=" *:&:ls"


## Set up aliases
if [[ "Darwin" == `uname` ]] ; then
    alias ls='ls -FG'
else
    alias ls='ls -F --color=auto'
fi

alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lal='ls -la'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


export PATH=/Users/jlinder/bin:/usr/local/bin:/usr/local/share/python:$PATH

# Python Things
source /usr/local/share/python/virtualenvwrapper.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

