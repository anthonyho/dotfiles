# common .bashrc to share among all machines
# Last update AH 1/28/2015


# --- Source global definitions --- #
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# --- Environmental variables --- #
export HISTSIZE=1000  # Changing history size
export HISTFILESIZE=1000  # Changing history size
export HISTCONTROL='ignoredups'  # Eliminate duplicates in history
export EDITOR='emacs -nw'  # Set default edit to emacs
export PATH="$PATH:$HOME/scripts/linuxTools:$HOME/scripts/arrayAnalysisTools/quantTools:$HOME/scripts/arrayAnalysisTools/seqTools:$HOME/scripts/arrayAnalysisTools/miscell:$HOME/scripts/array_fitting_tools/bin"
export PYTHONPATH="$PYTHONPATH:$HOME/scripts/arrayAnalysisTools/pythonLib:$HOME/scripts/arrayAnalysisTools/projectLib:$HOME/scripts/array_fitting_tools/bin:$HOME/scripts"
export PYTHONSTARTUP="$HOME/scripts/dotfiles/python_init.py"
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
    alias ll='ls -hlG'
    alias la='ls -AtrhlG'
elif [ "$(uname)" == "Linux" ]; then  # Linux
    alias l='ls --color=auto'
    alias ls='ls --color=auto'
    alias lst='ls -trhl --color=auto'
    alias ll='ls -hl --color=auto'
    alias la='ls -Atrhl --color=auto'
fi
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
alias lotus='ssh -X $lotus'
alias mesquite='ssh -X $mesquite'

# - work - # 
export laurel='anthony@laurel.stanford.edu'
export greenseqwjg='wjg@greenseq.stanford.edu'
export greenseq='anthony@greenseq.stanford.edu'
export clusterlustre='anthony@clusterlustre.stanford.edu'
export greendragonwjg='wjg@greendragon.stanford.edu'
export greendragon='anthony@greendragon.stanford.edu'
export raid='wjg@gatorraid.stanford.edu'
export raidBackup='backupdaemon@gatorraid.stanford.edu'
export greennas='anthony@greennas.stanford.edu'
export pegasus='anthony@pegasus.stanford.edu'
export pegasus_ip='anthony@171.65.76.27'
export sherlock='ahho@sherlock.stanford.edu'
export sherlock2='ahho@login.sherlock.stanford.edu'
export oak='ahho@oak-dtn.stanford.edu:/oak/stanford/groups/wjg/ahho'
alias laurel='ssh -X $laurel'
alias greenseqwjg='ssh -X $greenseqwjg'
alias greenseq='ssh -X $greenseq'
alias clusterlustre='ssh -X $clusterlustre'
alias greendragonwjg='ssh -X $greendragonwjg'
alias greendragon='ssh -q -Y $greendragon'
alias raid='ssh -X $raid'
alias raidBackup='ssh -X $raidBackup'
alias greennas='ssh $greennas'
alias pegasus='ssh -X $pegasus'
alias pegasus_ip='ssh -X $pegasus_ip'
alias sherlock='ssh -Y $sherlock'
alias sherlock2='ssh -Y $sherlock2'
alias k='kinit ahho@stanford.edu'

# - Stanford - #
export rice='ahho@rice.stanford.edu'
export icme='ahho@icme-gpu1.stanford.edu'
export xs='ahho@xstream-login.stanford.edu'
export xs1='ahho@xstream-ln01.stanford.edu'
export xs2='ahho@xstream-ln02.stanford.edu'
export soal2='ahho@soal-2.stanford.edu'
export soal3='ahho@soal-3.stanford.edu'
export soal4='ahho@soal-4.stanford.edu'
export soal5='ahho@soal-5.stanford.edu'
alias rice='ssh -X $rice'
alias icme='ssh -X $icme'
alias xs='ssh -CX $xs'
alias xs1='ssh -CX $xs1'
alias xs2='ssh -CX $xs2'
alias soal2='ssh -CX $soal2'
alias soal3='ssh -CX $soal3'
alias soal4='ssh -CX $soal4'
alias soal5='ssh -CX $soal5'


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
#export corn='ahho@corn.stanford.edu'
