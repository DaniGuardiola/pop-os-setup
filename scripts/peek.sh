# load script utils
source utils/lib.sh

log 'Installing Peek'
exit-if-installed peek

flatpak install --noninteractive flathub com.uploadedlobster.peek
bash_aliases peek-alias "alias peek='flatpak run com.uploadedlobster.peek'"
