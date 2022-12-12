
" only done for neovim (not normal vim)

" load nerdtree on startup
autocmd VimEnter * NERDTree

" turnoff line numbers in the terminal - bit too much clutter for my liking
augroup TerminalStuff
   au! 
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END
