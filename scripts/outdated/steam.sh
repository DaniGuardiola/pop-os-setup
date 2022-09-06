# load script utils
source utils/lib.sh

log 'Installing Steam'
exit-if-installed steam
flatpak install --noninteractive flathub com.valvesoftware.Steam