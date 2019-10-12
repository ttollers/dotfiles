
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'morhetz/gruvbox'
Plug 'derekwyatt/vim-scala'
Plug 'mhartington/oceanic-next'
Plug 'lifepillar/vim-cheat40'
Plug 'scrooloose/nerdcommenter'
Plug 'janko-m/vim-test'
Plug 'hashivim/vim-terraform'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'ryanoasis/vim-devicons'
Plug 'gregsexton/gitv'

call plug#end()

source ~/dotfiles/vim/vimrcs/basic.vim
source ~/dotfiles/vim/vimrcs/filetypes.vim
source ~/dotfiles/vim/vimrcs/plugins_config.vim
source ~/dotfiles/vim/vimrcs/extended.vim

if has('nvim')
  source ~/dotfiles/vim/vimrcs/nvim.vim
endif
