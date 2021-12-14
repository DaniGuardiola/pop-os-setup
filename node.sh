# load script utils
source script-utils.sh

log 'Installing Node.js'
# exit-if-installed node
NVM_VERSION=$(curl --silent "https://api.github.com/repos/nvm-sh/nvm/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash
# head -n -3 ~/.bashrc > tmp/.bashrc-node && cat tmp/.bashrc-node > ~/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


# install yarn
npm i -g yarn
