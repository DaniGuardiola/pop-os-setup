# load script utils
source utils/lib.sh

log 'Installing Discord'
exit-if-installed discord

flatpak install --noninteractive flathub com.discordapp.Discord
bash_aliases discord-alias "alias discord='flatpak run com.discordapp.Discord'"
