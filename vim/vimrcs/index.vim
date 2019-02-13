
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'fatih/vim-go'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug '907th/vim-auto-save'
Plug 'pangloss/vim-javascript'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'"
Plug 'airblade/vim-gitgutter'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'reasonml-editor/vim-reason-plus'
Plug 'itchyny/lightline.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'lifepillar/vim-cheat40'
Plug 'scrooloose/nerdcommenter'
Plug 'janko-m/vim-test'
Plug 'hashivim/vim-terraform'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
endif

call plug#end()

source ~/dotfiles/vim/vimrcs/basic.vim
source ~/dotfiles/vim/vimrcs/filetypes.vim
source ~/dotfiles/vim/vimrcs/plugins_config.vim
source ~/dotfiles/vim/vimrcs/extended.vim

if has('nvim')
  source ~/dotfiles/vim/vimrcs/nvim.vim
endif
