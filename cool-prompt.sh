# load script utils
source script-utils.sh

# install prompt
bashrc cool-prompt "
case \"\$TERM\" in
\n    xterm-color|*-256color) color_prompt=yes;;
\nesac
\n
\nif [ -n \"\$force_color_prompt\" ]; then
\n    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
\n        color_prompt=yes
\n    else
\n        color_prompt=
\n    fi
\nfi
\n
\nparse_git_branch() {
\n git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \\(.*\\)/ \\1 /'
\n}
\nif [ \"\$color_prompt\" = yes ]; then
\n PS1='\${debian_chroot:+(\$debian_chroot)}\\[\\033[01;32m\\]\\u \\[\\033[01;34m\\]\\w\\[\\033[01;31m\\]\$(parse_git_branch)\\[\\033[00m\\]\\\$ '
\nelse
\n PS1='\${debian_chroot:+(\$debian_chroot)}\\u@\\h:\\w\$(parse_git_branch)\\\$ '
\nfi
\nunset color_prompt force_color_prompt"