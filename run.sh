# pre-install
# -----------

# load script utils
source utils/lib.sh

# create temporary dir
mkdir $TMP_DIR


# upgrade everything
log 'Upgrading packages & firmware'
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo fwupdmgr get-devices -y
sudo fwupdmgr get-updates
sudo fwupdmgr update -y
sudo flatpak update

# install additional package managers
log 'Installing pip3'
sudo apt install python3-pip -y

# set up ~/.bashrc
log 'Setting up ~/.bashrc'
bashrc pop-os-setup 'export PATH=$PATH:$HOME/.local/bin'

# components
# ----------

./components.sh


# post-install
# ------------

# clean up
log 'Cleaning up...'
sudo apt autoremove -y
sudo rm -rf $TMP_DIR

# reboot prompt
echo -e "\n\n\n"
read -p "All done! Do you want to reboot now? (recommended) y/n " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    read -p ''
    sudo reboot
fi
