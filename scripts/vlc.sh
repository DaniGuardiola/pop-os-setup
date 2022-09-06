# load script utils
source utils/lib.sh

log 'Installing VLC'
exit-if-installed vlc

flatpak install --noninteractive flathub org.videolan.VLC
bash_aliases vlc-alias "alias vlc='flatpak run org.videolan.VLC'"
