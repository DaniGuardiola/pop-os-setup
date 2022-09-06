# load script utils
source utils/lib.sh

log 'Installing pre-commit'
exit-if-installed pre-commit

pip3 install pre-commit