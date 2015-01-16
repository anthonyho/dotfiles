# common .bashrc to share among all machines
# AH 12/16/2014


# --- Source global definitions --- #
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# --- Environmental variables --- #
export HISTSIZE=1000  # Changing history size
export HISTFILESIZE=1000  # Changing history size
export HISTCONTROL='ignoredups'  # Eliminate duplicates in history
export EDITOR='emacs -nw'  # Set default edit to emacs
export PATH="$PATH:$HOME/scripts/linuxTools:$HOME/scripts/AHH_arrayTools/quantTools"
export PYTHONPATH="$PYTHONPATH:$HOME/scripts/pythonTools"
if [ "$(uname)" == "Darwin" ]; then  # Mac
    export LSCOLORS=GxFxCxDxBxegedabagaced  # Specify ls colors for Mac
fi


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
if [ "$(uname)" == "Darwin" ]; then  # Mac
    alias l='ls -G'
    alias ls='ls -G'
    alias lst='ls -trhlG'
    alias la='ls -AtrhlG'
elif [ "$(uname)" == "Linux" ]; then  # Linux
    alias l='ls --color=auto'
    alias ls='ls --color=auto'
    alias lst='ls -trhl --color=auto'
    alias la='ls -Atrhl --color=auto'
fi
alias grep='grep -i --color=auto'  # Ignore case and turn color on
alias fgrep='fgrep --color=auto'  # Turn color on
alias egrep='egrep --color=auto'  # Turn color on
alias jobs='jobs -l'  # List process IDs in addition to the normal information
alias echo='echo -e' # Enable special characters
alias mkdir='mkdir -p'  # Create intermediate directories as required.
alias rsync='rsync -avz --progress'
alias rsyncd='rsync -avz --progress --delete'
alias rsynce='rsync -avz --progress --existing'
alias rsynci='rsync -avzi'

# - options for other apps - #
alias matlab="matlab -nodesktop"  # MATLAB no desktop

# - shortcuts - #
alias whereami='echo $HOSTNAME'
alias stfu='sudo shutdown -h now'
alias ctfo='sudo shutdown -r now'
if [ "$(uname)" == "Darwin" ]; then  # Mac
    alias preview='open -a Preview'
fi

# - git shortcuts - #
alias gs='git status'
alias gb='git branch'
alias gci='git commit -a'
alias gpm='git push -u origin master'
alias gcpm='git commit -a && git push -u origin master'


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


# --- Remote access --- #

# - home - #
export lotus='anthony@lotus.stanford.edu'
export mesquite='anthony@mesquite.stanford.edu'
alias lotus='export TERM=xterm-color; ssh -X $lotus; export TERM=xterm'
alias mesquite='export TERM=xterm-color; ssh -X $mesquite; export TERM=xterm'

# - work - # 
export laurel='anthony@laurel.stanford.edu'
export greenseqsu='wjg@greenseq.stanford.edu'
export greenseq='anthony@greenseq.stanford.edu'
export clusterlustre='anthony@clusterlustre.stanford.edu'
export greendragonsu='wjg@greendragon.stanford.edu'
export greendragon='anthony@greendragon.stanford.edu'
export raid='wjg@gatorraid.stanford.edu'
export raidBackup='backupdaemon@gatorraid.stanford.edu'
alias laurel='export TERM=xterm-color; ssh -X $laurel; export TERM=xterm'
alias greenseqsu='export TERM=xterm-color; ssh -X $greenseqsu; export TERM=xterm'
alias greenseq='export TERM=xterm-color; ssh -X $greenseq; export TERM=xterm'
alias clusterlustre='export TERM=xterm-color; ssh -X $clusterlustre; export TERM=xterm'
alias greendragonsu='export TERM=xterm-color; ssh -X $greendragonsu; export TERM=xterm'
alias greendragon='export TERM=xterm-color; ssh -X $greendragon; export TERM=xterm'
alias raid='export TERM=xterm-color; ssh -X $raid; export TERM=xterm'
alias raidBackup='export TERM=xterm-color; ssh -X $raidBackup; export TERM=xterm'

# - other people's work machines - #
export clubmoss='wjg@clubmoss.stanford.edu'
export alfalfa='greenleaflab@alfalfa.stanford.edu'
export allspice='greenleaflab@allspice.stanford.edu'
export allspiceViviana='vrisca@allspice.stanford.edu'
export alicia='alicia@sr13-52e8946c88.stanford.edu'
alias clubmoss='export TERM=xterm-color; ssh -X $clubmoss; export TERM=xterm'
alias alfalfa='export TERM=xterm-color; ssh -X $alfalfa; export TERM=xterm'
alias allspice='export TERM=xterm-color; ssh -X $allspice; export TERM=xterm'
alias allspiceViviana='export TERM=xterm-color; ssh -X $allspiceViviana; export TERM=xterm'
alias alicia='export TERM=xterm-color; ssh -X $alicia; export TERM=xterm'

# - Stanford - #
export corn='ahho@corn.stanford.edu'
export icme='ahho@icme-gpu1.stanford.edu'
alias corn='export TERM=xterm-color; ssh -X $corn; export TERM=xterm'
alias icme='export TERM=xterm-color; ssh -X $icme; export TERM=xterm'


# --- old remote access --- #
#export tbgl='hho7@tbgl-work2.physics.illinois.edu'
#export tbglwork11='hho7@tbgl-work11.physics.illinois.edu'
#export tbglserver='hho7@tbgl-server2.physics.uiuc.edu'
#export vesselinFuckingVelev='antoine@24.13.132.155'
#export ranger='hho@ranger.tacc.utexas.edu'
#export kraken='hyho@kraken.nics.tennessee.edu'
#export krakenpwd='hyho@kraken-pwd.nics.tennessee.edu'
#export jaguarxt4='hho7@jaguar.ccs.ornl.gov'
#export jaguarxt5='hho7@jaguarpf.ccs.ornl.gov'
