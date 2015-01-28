# .bashrc for Laurel
# Last update AH 1/28/2015

# --- Environmental variables --- #
export VMDAPPDIR='/Applications/VMD1.9.1.app/Contents'
export PATH="$PATH:/Applications/MATLAB_R2012b.app/bin"

# --- Define aliases --- #
alias vmd='"$VMDAPPDIR/Resources/VMD.app/Contents/MacOS/VMD" $* -nt'
alias vmdd='"$VMDAPPDIR/Resources/VMD.app/Contents/MacOS/VMD" $* -dispdev text -e'
alias xmgrace='/Applications/Grace.app/Contents/MacOS/start.sh'