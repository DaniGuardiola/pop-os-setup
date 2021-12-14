# load script utils
source script-utils.sh

log 'Setting up python3 and pip3 as default versions'
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10
sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 10

log 'Installing virtualenv'
sudo apt install python3.8-venv

log 'Installing PyCharm'
sudo snap install pycharm-community --classic

log 'Installing Poetry'
wget -O tmp/get-poetry.py https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py
python3 tmp/get-poetry.py -y
bashrc poetry 'export PATH="$HOME/.poetry/bin:$PATH"'
source $HOME/.poetry/env
poetry config virtualenvs.in-project true