# load script utils
source utils/lib.sh

log 'Installing Slack'
exit-if-installed slack

flatpak install --noninteractive flathub com.slack.Slack
bash_aliases slack-alias "alias slack='flatpak run com.slack.Slack'"
