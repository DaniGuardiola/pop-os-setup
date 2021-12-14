# load script utils
source script-utils.sh

log 'Installing Gnome tweaks'
sudo apt install gnome-tweaks -y

# log 'Installing Gnome extension installer scripts'

# DOES NOT WORK ANYMORE, see: https://github.com/brunelli/gnome-shell-extension-installer/issues/16

# sudo wget -O /usr/bin/gnome-shell-extension-installer "https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer"
# sudo chmod +x /usr/bin/gnome-shell-extension-installer

# log 'Installing some Gnome extensions'
# gnome-shell-extension-installer 906 1112 7 1476 800 943 1116 1473 1459 744 352 --yes --restart-shell


# INSTALLED:
# - https://extensions.gnome.org/extension/906/sound-output-device-chooser/
# - https://extensions.gnome.org/extension/1112/screenshot-tool/
# - https://extensions.gnome.org/extension/7/removable-drive-menu/
# - https://extensions.gnome.org/extension/1476/unlock-dialog-background/
# - https://extensions.gnome.org/extension/800/remove-dropdown-arrows/
# - https://extensions.gnome.org/extension/943/workspace-scroll/
# - https://extensions.gnome.org/extension/1116/workspace-switch-wraparound/
# - https://extensions.gnome.org/extension/1473/toggle-mute-on-middle-click/
# - https://extensions.gnome.org/extension/1459/miniview/
# - https://extensions.gnome.org/extension/744/hide-activities-button/
# - https://extensions.gnome.org/extension/352/middle-click-to-close-in-overview/
# OTHER RECOMMENDED:
# - https://extensions.gnome.org/extension/615/appindicator-support/ # this one is baked in now??
# - https://extensions.gnome.org/extension/1166/extension-update-notifier/
# - https://extensions.gnome.org/extension/2224/easy-docker-containers/
# - sudo apt install lm-sensors
# - sudo detect-sensors
# - https://extensions.gnome.org/extension/841/freon/
# TODO:
# - configure dash launchers
# - configure extensions
