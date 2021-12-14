# load script utils
source script-utils.sh

exit-if-installed code

log 'Installing Visual Studio Code and basic extensions'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > tmp/packages.microsoft.gpg
sudo install -o root -g root -m 644 tmp/packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install code -y
code --install-extension ArtisanByteCrafter.poptheme
