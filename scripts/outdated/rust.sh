# load script utils
source utils/lib.sh

log 'Installing Rust'
exit-if-installed rustc
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env
bashrc rust 'export PATH="$HOME/.cargo/bin:$PATH"'

# vscode extensions
code --install-extension bungcip.better-toml
code --install-extension rust-lang.rust
code --install-extension serayuzgur.crates