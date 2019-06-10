
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'fatih/vim-go'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'pangloss/vim-javascript'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'lifepillar/vim-cheat40'
Plug 'scrooloose/nerdcommenter'
Plug 'janko-m/vim-test'
Plug 'hashivim/vim-terraform'
Plug 'elmcast/elm-vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'ryanoasis/vim-devicons'

call plug#end()

source ~/dotfiles/vim/vimrcs/basic.vim
source ~/dotfiles/vim/vimrcs/filetypes.vim
source ~/dotfiles/vim/vimrcs/plugins_config.vim
source ~/dotfiles/vim/vimrcs/extended.vim

if has('nvim')
  source ~/dotfiles/vim/vimrcs/nvim.vim
endif
