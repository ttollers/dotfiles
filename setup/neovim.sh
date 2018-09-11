brew install neovim 
mkdir -p ~/.config/nvim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after \
let &packpath = &runtimepath \
source ~/.vimrc" >> ~/.config/nvim/init.vim 

# Add python as neovim dependency
(if using python3)
```
pip3 install --user neovim
```

# install Ack for plugin
```
brew install ack
```

# Install all plugins for both vim and neovim
```
vim +PlugInstall +qall
nvim +PlugInstall +qall
```

