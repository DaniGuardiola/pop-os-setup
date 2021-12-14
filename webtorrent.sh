# load script utils
source script-utils.sh

log 'Installing WebTorrent Desktop'
exit-if-installed webtorrent-desktop
flatpak install --noninteractive flathub io.webtorrent.WebTorrent