# load script utils
source utils/lib.sh

log 'Installing meld'
exit-if-installed meld

flatpak install --noninteractive flathub org.gnome.meld
bash_aliases meld-alias "alias meld='flatpak run org.gnome.meld'"
