# load script utils
source utils/lib.sh

log 'Installing vim'
exit-if-installed vim

sudo apt install vim -y
bashrc vim "
export VISUAL=vim
\nexport EDITOR=\"\$VISUAL\""
