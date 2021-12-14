# load script utils
source script-utils.sh

log 'Installing VLC'
flatpak install --noninteractive flathub org.videolan.VLC
bashrc vlc-alias "alias vlc='flatpak run org.videolan.VLC'"
