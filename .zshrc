#Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

bindkey -s '^o' 'lfcd\n'  # zsh

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

v()
{
    if (($# !=1 )); then
     vim -o $@
    else 
     vim $1
    fi
}
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="qutebrowser"

setopt nohup
bindkey "^E" edit-command-line
source ~/.config/lf/lficons



NVARCH=`uname -s`_`uname -m`; export NVARCH
#NVCOMPILERS=/opt/nvidia/hpc_sdk; export NVCOMPILERS
#MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/22.9/compilers/man; export MANPATH
#PATH=$NVCOMPILERS/$NVARCH/22.9/compilers/bin:$PATH; export PATH
#PATH=$NVCOMPILERS/$NVARCH/22.9/cuda/11.7/bin:$PATH; export PATH
#export PATH=$NVCOMPILERS/$NVARCH/22.9/comm_libs/mpi/bin:$PATH
#export MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/22.9/comm_libs/mpi/man
##MANPATH=$MANPATH:/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/compilers/man; export MANPATH
##export MPIF90=$NVCOMPILERS/$NVARCH/22.9/comm_libs/mpi/bin/mpif90
###PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/compilers/bin:$PATH; export PATH
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/cuda/"
#export LD_LIBRARY_PATH="/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/cuda/11.4/lib64;/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/cuda/lib64:$LD_LIBRARY_PATH"
##export LD_LIBRARY_PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/21.9/compilers/include:$LD_LIBRARY_PATH
##export PATH=$PATH:/opt/q-e/bin/

cat ~/.cache/wal/sequences
source ~/gitstuff/zmk/zephyr/zephyr-env.sh

MANPATH=$MANPATH:/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/compilers/man; export MANPATH
PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/compilers/bin:$PATH; export PATH
export PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/comm_libs/mpi/bin:$PATH
export MANPATH=$MANPATH:/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/comm_libs/mpi/man

CUDA_HOME="/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/cuda/11.0/"; export CUDA_HOME
