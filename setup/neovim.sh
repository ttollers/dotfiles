brew install neovim 
mkdir -p ~/.config/nvim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after \
let &packpath = &runtimepath \
source ~/.vimrc" >> ~/.config/nvim/init.vim 

# install Ack for plugin
brew install ack


# LanguageClient dependency
cd ~/.vim/bunndle/LanguageClient-neovim/install.sh 
bash install.sh
