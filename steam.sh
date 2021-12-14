# load script utils
source script-utils.sh

log 'Installing Steam'
exit-if-installed steam
flatpak install --noninteractive flathub com.valvesoftware.Steam