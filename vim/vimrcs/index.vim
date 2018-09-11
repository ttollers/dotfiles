
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'fatih/vim-go'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug '907th/vim-auto-save'
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'reasonml-editor/vim-reason-plus'
Plug 'itchyny/lightline.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'lifepillar/vim-cheat40'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
endif

call plug#end()

source ~/dev-setup/vim/vimrcs/basic.vim
source ~/dev-setup/vim/vimrcs/filetypes.vim
source ~/dev-setup/vim/vimrcs/plugins_config.vim
source ~/dev-setup/vim/vimrcs/extended.vim

if has('nvim')
  source ~/dev-setup/vim/vimrcs/nvim.vim
endif
