# .bashrc for Sherlock
# Last update AH 6/29/2016

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
