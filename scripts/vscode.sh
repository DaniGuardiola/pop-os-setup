# load script utils
source utils/lib.sh

log 'Installing VSCode'
exit-if-installed code

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > $TMP_DIR/packages.microsoft.gpg
sudo install -o root -g root -m 644 $TMP_DIR/packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install code -y
