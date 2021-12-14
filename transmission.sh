# load script utils
source script-utils.sh

log 'Installing Transmission (torrent)'
exit-if-installed transmission-gtk
flatpak install --noninteractive flathub com.transmissionbt.Transmission
bashrc transmission-alias "alias transmission='flatpak run com.transmissionbt.Transmission'"
