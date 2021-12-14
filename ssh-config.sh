# load script utils
source script-utils.sh

log 'Configuring SSH'
if test -f "$HOME/.ssh/id_ed25519.pub"; then
    echo "You already have a key!"
else
	printf "The default SSH key will be generated without a passphrase (if it\ndoesn\'t exist yet), for authentication in services like Github or Gitlab\n"
	read -p 'What label do you want to use in the key? ' KEY_LABEL
	yes '' | ssh-keygen -t ed25519 -b 4096 -C $KEY_LABEL
fi
printf '\nThis is your public key ~/.ssh/id_ed25519.pub:\n\n'
cat "$HOME/.ssh/id_ed25519.pub"
printf '\n\nCopy the key and save it in the services you want to authenticate with.\nCommon git services:\n\n'
echo '- Gitlab: https://gitlab.com/profile/keys'
echo '- Github: https://github.com/settings/ssh/new'
