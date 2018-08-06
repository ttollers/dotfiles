set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin '907th/vim-auto-save'
Plugin 'junegunn/fzf.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'SirVer/ultisnips'
Plugin 'airblade/vim-gitgutter'
Plugin 'autozimu/LanguageClient-neovim'
Plugin 'reasonml-editor/vim-reason-plus'
Plugin 'itchyny/lightline.vim'

if has('nvim')
  Plugin 'Shougo/deoplete.nvim'
endif

call vundle#end()

filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting
filetype plugin indent on    " required

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim

" ON STARTUP
if has('nvim')
  source ~/.vim/vimrcs/nvim.vim
endif
