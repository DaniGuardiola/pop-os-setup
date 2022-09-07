# load script utils
source utils/lib.sh

log 'Installing or updating fuck - github.com/nvbn/thefuck'

pip3 install thefuck --user
bashrc fuck 'eval "$(thefuck --alias)"'
