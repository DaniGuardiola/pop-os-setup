# load script utils
source script-utils.sh

log 'Installing Chrome'
exit-if-installed google-chrome
deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb