bashrc () {
    # Idempotently add text to ~/.bashrc
    # $1: section id
    # $2: text to add
    START_LINE_TEXT="# Pop! OS setup script: $1 start"
    END_LINE_TEXT="# $1 end"
        
    START_LINE=$(grep -Fn "$START_LINE_TEXT" ~/.bashrc | cut -f 1 -d ':')
    END_LINE=$(grep -Fn "$END_LINE_TEXT" ~/.bashrc | cut -f 1 -d ':')

    if [[ -z $START_LINE ]]
    then
      echo "Adding $1 section to .bashrc..."
    else
      echo "Replacing $1 section in .bashrc..."
      sed -i.bak -e "$START_LINE,${END_LINE}d" ~/.bashrc
    fi

    echo "$START_LINE_TEXT" >> ~/.bashrc
    echo -e $2 >> ~/.bashrc
    echo "$END_LINE_TEXT" >> ~/.bashrc
}

log () {
    # log section name with good formatting
    # $1: string to log
    echo -e "\n\n> $1\n"
}

deb () {
    # download and install a deb file
    # $1: deb file URL
    name=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
    wget -O "tmp/$name.deb" $1
    sudo dpkg -i "tmp/$name.deb"
    sudo apt install -fy
}

exit-if-installed () {
    # exits the current script if the command exists
    # $1: command to test
    if [ -x "$(command -v $1)" ]; then
        echo "'$1' already exists, skipping..."
        exit 1
    fi
}
