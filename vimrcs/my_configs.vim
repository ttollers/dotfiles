filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" set vim to auto save
let g:auto_save = 1

" Set nerdtree to always show hidden files
let NERDTreeShowHidden=1

" Auto save config
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Prevents vim-go being realllly slow on saves
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

