# .bashrc for xStream
# Last update AH 4/1/2015

# Define aliases
#module load foss git R RStudio

alias cdw='cd $GROUP_WORK'
alias ml='module load foss git RStudio'
alias mp='module purge; rm ~/.lmod.d/.cache/*'
alias rs='rstudio &'
alias sr='function _sr(){ srun -N1 -c$* --x11 --pty bash -l; }; _sr'
