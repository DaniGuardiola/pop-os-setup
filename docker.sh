# load script utils
source script-utils.sh

log 'Installing Docker'
exit-if-installed docker
curl -fsSL https://get.docker.com -o tmp/get-docker.sh
sudo sh tmp/get-docker.sh

log 'Giving current user permissions to manage Docker'
sudo groupadd docker
sudo usermod -aG docker $USER

