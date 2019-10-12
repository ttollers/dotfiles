brew install neovim 
mkdir -p ~/.config/nvim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after \
let &packpath = &runtimepath \
source ~/.vimrc" >> ~/.config/nvim/init.vim 

# Add python as neovim dependency
# (if using python3)
```
pip3 install --user neovim
```

# install dependencies
```
brew install ack fzf
```

# Install all plugins for both vim and neovim
```
vim +PlugInstall +qall
nvim +PlugInstall +qall
```

# Language Server Installs
npm i -g bash-language-server
npm install -g dockerfile-language-server-nodejs
