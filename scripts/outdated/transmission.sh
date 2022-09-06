# load script utils
source utils/lib.sh

log 'Installing Transmission (torrent)'
exit-if-installed transmission-gtk
flatpak install --noninteractive flathub com.transmissionbt.Transmission
bash_aliases transmission-alias "alias transmission='flatpak run com.transmissionbt.Transmission'"
