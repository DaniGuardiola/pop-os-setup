# load script utils
source script-utils.sh

log 'Configuring git'

if [ $(git config --global user.email) ]; then
    echo "Seems like you've already configured git!"
    exit 1
fi

read -p 'What name do you want to use with git? ' GIT_NAME
read -p 'What email do you want to use with git? ' GIT_EMAIL

git config --global user.email $GIT_EMAIL
git config --global user.name $GIT_NAME
git config --global push.default simple
