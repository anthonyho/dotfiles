# .bashrc for Sherlock
# Last update AH 4/10/2018

# --- Environmental variables --- #
if [[ "$SHERLOCK" == "1" ]]; then
    # Use Python 2.7.11 :: Anaconda 4.1.0 on Sherlock 1
    # Packages in ~/.local/
    export PATH=/home/ahho/bin/anaconda2/bin:$PATH 
else
    # Use Python 2.7.13 on Sherlock 2
    # Packages in ~/.local/
    module load py-jupyter/1.0.0_py27
fi
export PYTHONSTARTUP="$HOME/scripts/dotfiles/python_init_sherlock.py"
export MATLABPATH="$HOME/scripts/array_tools:$HOME/scripts/array_tools/CPlibs:$HOME/scripts/array_tools/CPscripts"


# --- Sherlock specific shortcuts --- #
alias jnb='sh_notebook -c 4 -m 16 -p sfgf,normal,owners -t 24:00:00 -J jnb'
alias sq='squeue -u ahho'
alias sqb='squeue -p biochem'
alias sqs='squeue -p sfgf'
alias sqo='squeue -p owners'
alias sqn='squeue -p normal'
