# load script utils
source script-utils.sh

log 'Installing Discord'
flatpak install --noninteractive flathub com.discordapp.Discord
bashrc discord-alias "alias discord='flatpak run com.discordapp.Discord'"
