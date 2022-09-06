# load script utils
source utils/lib.sh

log 'Installing WebTorrent Desktop'
exit-if-installed webtorrent-desktop
flatpak install --noninteractive flathub io.webtorrent.WebTorrent