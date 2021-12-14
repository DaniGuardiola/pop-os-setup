# load script utils
source script-utils.sh

log 'Installing MEGAsync'
exit-if-installed megasync
deb https://mega.nz/linux/MEGAsync/xUbuntu_20.04/amd64/megasync-xUbuntu_20.04_amd64.deb
deb https://mega.nz/linux/MEGAsync/xUbuntu_20.04/amd64/nautilus-megasync-xUbuntu_20.04_amd64.deb