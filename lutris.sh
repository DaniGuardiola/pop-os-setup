# load script utils
source script-utils.sh

log 'Installing Lutris'
# exit-if-installed lutris # doesn't work with flatpak :(
# wine
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb http://dl.winehq.org/wine-builds/ubuntu focal main'
sudo apt install --install-recommends winehq-staging -y
# lutris
flatpak remote-add --user flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
flatpak update --appstream
flatpak install --user --noninteractive flathub-beta net.lutris.Lutris//beta