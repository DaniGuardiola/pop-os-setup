# load script utils
source utils/lib.sh

log 'Installing Telegram'
exit-if-installed telegram-desktop
flatpak install --noninteractive flathub org.telegram.desktop