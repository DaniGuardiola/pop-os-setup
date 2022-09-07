# load script utils
source utils/lib.sh

log 'Installing direnv'
exit-if-installed direnv

sudo apt install direnv -y
eval "$(direnv hook bash)"
bashrc direnv 'eval "$(direnv hook bash)"'