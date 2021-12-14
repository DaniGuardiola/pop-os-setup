# load script utils
source script-utils.sh

# fuck
log 'Installing fuck - github.com/nvbn/thefuck'
pip3 install thefuck --user
bashrc fuck 'eval "$(thefuck --alias)"'

# vim
log 'Installing vim'
sudo apt install vim -y
bashrc vim "
export VISUAL=vim
\nexport EDITOR=\"\$VISUAL\""

# meld
log 'Installing meld'
flatpak install --noninteractive flathub org.gnome.meld
bashrc meld-alias "alias meld='flatpak run org.gnome.meld'"

# aliases
log 'Adding aliases'
bashrc aliases "alias pull-all='find . -type d -name .git -exec sh -c cd \"{}\"/../ && pwd && git pull ;'"
