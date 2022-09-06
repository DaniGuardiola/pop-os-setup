# load script utils
source utils/lib.sh

log 'Installing Go'
exit-if-installed go
wget -O "$TMP_DIR/go.tar.gz" https://dl.google.com/go/$(curl https://golang.org/VERSION?m=text).linux-amd64.tar.gz
sudo tar -C /usr/local -xzf $TMP_DIR/go.tar.gz
bashrc golang "
export PATH=\$PATH:/usr/local/go/bin
\nexport GOPATH=\$HOME/projects/go
\nexport PATH=\$PATH:\$GOPATH/bin"