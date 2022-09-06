# load script utils
source utils/lib.sh

log 'Installing or updating nvm'

NVM_VERSION=$(curl --silent "https://api.github.com/repos/nvm-sh/nvm/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

log 'Installing or updating Node.js'

nvm install node
nvm use node
nvm alias default node

log 'Enabling corepack (Yarn support)'

corepack enable
