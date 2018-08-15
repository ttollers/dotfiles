### Vim Setup

# Clone this repo
```
git clone get@github.com/ttollers/vim-setup ~/vim-setup
```

# Install neovim (optional)
TODO: test this
``` 
brew install neovim 
mkdir -p ~/.config/nvim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after \
let &packpath = &runtimepath \
source ~/.vimrc" >> ~/.config/nvim/init.vim 
```

# Install Ack
```
brew install ack
```

# Get latest Vim
TODO

# Install the Language Client
TODO: not completed
```
bash ~/.vim/bundle/LanguageClient-neovim/install.sh 
```
