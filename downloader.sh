# About
# -----

# This is a set of scripts that help me set up my Pop! OS machine
# with development tools, some configurations and some other software
# (for example, steam and discord are included).

# Of course, the components included in the script are the ones that I
# personally make use of, but it should be useful for anyone who wants
# to easily install / configure a subset (or all) of these components.

# The downloader script (this one) is designed for ease of use and allows
# optional customization of the components to install / configure.

# This should work for any recent version of Pop! OS above 20.04, but the last time
# I tested it I was on 20.04. It also works with a fresh install, with
# no pre-requisites.

# Oh, and one last thing, these scripts are idempotent, so you can
# execute them multiple times and things won't break, nor your
# .bashrc file will grow indefinitely.

# Enjoy! :)

# Usage
# -----

# Method 1 (simplest, recommended)

# Use the downloader:
# $ source <(wget -qO - pop-os.daniguardiola.me)

# Method 2 (advanced)

# 1. Download this gist as ZIP and extract it
# URL: https://gist.github.com/DaniGuardiola/def024b7571e8cda4d2043cf50872e1e/
# 2. $ cd <path>/pop-os-setup/
# 3. (optional) Edit the components and configurations sections in components.sh
# 4. $ sudo chmod +x pop-os-setup.sh
# 5. $ ./pop-os-setup.sh


echo -e "\nWelcome to the Pop! OS setup script by Dani Guardiola"
echo -e "-----------------------------------------------------\n"

echo -e "Source code: https://gist.github.com/DaniGuardiola/def024b7571e8cda4d2043cf50872e1e/"
echo -e "Instructions: http://pop-os.daniguardiola.me/\n\n"

read -p "Press enter to proceed (or ctrl + c to abort)..."
echo

# sudo cache
sudo echo

echo -e "\n> Downloading Pop! OS install scripts...\n"

cd /tmp
rm -rf pop-os-setup pop-os-setup.zip
wget -O pop-os-setup.zip https://codeload.github.com/gist/def024b7571e8cda4d2043cf50872e1e/zip/master
unzip -q -d pop-os-setup/ -j pop-os-setup.zip
cd pop-os-setup/
sudo chmod +x pop-os-setup.sh

read -p "Do you want to customize the components to install? y/n " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo -e "\nAn editor will be opened with the component list file. Edit it,"
    echo -e "save the file and close the editor to continue.\n"
    read -p "Press enter to proceed (or ctrl + c to abort)..."
    echo -e "\nWaiting for editor to be closed..."
    gedit components.sh
fi

echo -e "\n\n> Executing Pop! OS install scripts..."

./pop-os-setup.sh

# load ~/.bashrc
source ~/.bashrc