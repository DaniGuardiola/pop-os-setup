# load script utils
source utils/lib.sh

log 'Adding aliases'
bash_aliases aliases "alias pull-all='find . -type d -name .git -exec sh -c cd \"{}\"/../ && pwd && git pull ;'"
