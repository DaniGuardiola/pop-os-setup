# load script utils
source utils/lib.sh

log 'Installing direnv'
exit-if-installed direnv

sudo apt install direnv -y
