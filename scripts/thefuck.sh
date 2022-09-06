# load script utils
source utils/lib.sh

log 'Installing fuck - github.com/nvbn/thefuck'
exit-if-installed fuck

pip3 install thefuck --user
bashrc fuck 'eval "$(thefuck --alias)"'
