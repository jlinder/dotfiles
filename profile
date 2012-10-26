# Set the command prompt.
export PS1="\u@\h: \W\\$ "

# Set which commands are appended to the history file.
export HISTIGNORE=" *:&:ls"

# This one can have values of:  ignorespace, ignoredups, or ignoreboth
#HISTCONTROL ignoreboth

# Set the history time format
export HISTTIMEFORMAT='%a %T '

# Setting extended pattern matching.
shopt -s extglob


# Setting aliases up.
alias ll='ls -lFG'
alias la='ls -aFG'
#alias ls='ls -FG'
alias lla='ls -laFG'
alias lal='ls -laFG'


export CVS_RSH=ssh
export EDITOR=/usr/bin/vim


