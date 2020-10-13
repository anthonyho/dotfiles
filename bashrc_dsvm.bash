# common .bashrc to share among all machines
# Last update AH 10/12/2020


# --- Source global definitions --- #
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# --- Environmental variables --- #
export HISTSIZE=1000  # Changing history size
export HISTFILESIZE=1000  # Changing history size
export HISTCONTROL='ignoredups'  # Eliminate duplicates in history
export EDITOR='emacs -nw'  # Set default edit to emacs

# --- Define aliases --- #

# - safety first - #
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias killall='killall -i'

# - emacs - #
alias e='emacs -nw'  # emacs no windows 
er() {
    emacs -nw "$1" --eval '(setq buffer-read-only t)'  # emacs read only shortcut
}

# - options for common Linux commands - #
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias lst='ls -trhl --color=auto'
alias ll='ls -hl --color=auto'
alias la='ls -Atrhl --color=auto'
alias grep='grep -i --color=auto'  # Ignore case and turn color on
alias fgrep='fgrep --color=auto'  # Turn color on
alias egrep='egrep --color=auto'  # Turn color on
alias jobs='jobs -l'  # List process IDs in addition to the normal information
alias echo='echo -e' # Enable special characters
alias mkdir='mkdir -p'  # Create intermediate directories as required.
alias rsync='rsync -avzP'
alias rsyncd='rsync -avzP --delete'
alias rsynce='rsync -avzP --existing'
alias rsynci='rsync -avzPi'
alias rsyncn='rsync -avnc'

# - shortcuts - #
alias whereami='echo $HOSTNAME'

# - git shortcuts - #
alias gs='git status'
alias gb='git branch'

# --- Terminal display --- #

# - colors - #
BLACK='\[\e[0m\]'
RED='\[\e[0;31m\]'
GREEN='\[\e[0;32m\]'
YELLOW='\[\e[0;33m\]'
BLUE='\[\e[0;34m\]'
VIOLET='\[\e[0;35m\]'
CYAN='\[\e[0;36m\]'
GRAY='\[\e[0;37m\]'

# - bash prompt and title - #
PS1="$VIOLET[\j] $BLUE\w $BLACK"  # Set bash prompt style
if [ "$SSH_CONNECTION" ]; then
    PS1="\[\e]2;\u@\h\a\]$PS1"  # Set bash title if ssh'ed into remote machine
else
    PS1="\[\e]2;\w\007\]$PS1" # Set bash title to current directory if local
fi
