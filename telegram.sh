# load script utils
source script-utils.sh

log 'Installing Telegram'
exit-if-installed telegram-desktop
flatpak install --noninteractive flathub org.telegram.desktop