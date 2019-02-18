""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:polyglot_disabled = ['elm', 'ts']



""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='mru'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
set splitright
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" Set nerdtree to always show hidden files
let NERDTreeShowHidden=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightLineFilename'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

function! LightLineFilename()
  return expand('%')
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fixers = {
\   'javascript': ['eslint'], 
\   'json': ['prettier'],
\   'python': ['flake8'],
\   'typescript': ['tslint']
\ }

let g:ale_linters_ignore = {'typescript': ['tslint', 'eslint']}

nnoremap <silent> <leader>= :ALEFix<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Auto Save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_write_all_buffers = 0  " write all open buffers as if you would use :wa
let g:auto_save_events = ["InsertLeave", "TextChanged"] 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Utilsnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't use <tab> if integrating with deocompete
let g:UltiSnipsExpandTrigger="<nop>"
let g:ulti_expand_or_jump_res = 0
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-Tab>"
let g:UltiSnipsEditSplit="vertical"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Yats (typescript syntax highlighting)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:yats_host_keyword = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Deo complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
	let g:deoplete#enable_at_startup = 1
	" sets tab to cycle through auto-complete options
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	" makes it play nice with utilsnips
	set completeopt=menuone,preview
	function! ExpandSnippetOrCarriageReturn()
			let snippet = UltiSnips#ExpandSnippetOrJump()
			if g:ulti_expand_or_jump_res > 0
					return snippet
			else
					return "\<CR>"
			endif
	endfunction
	inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>"

endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-test
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let test#javascript#mocha#file_pattern = '\.spec\.js$' 
let test#neovim#term_position = "left"

" runs tests on auto save
"augroup test
  "autocmd!
  "autocmd BufWrite * if test#exists() |
    "\   TestFile |
    "\ endif
"augroup END

nmap <silent> <leader><C-n> :TestNearest<CR> " , Ctrl+n
nmap <silent> <leader><C-f> :TestFile<CR>    " , Ctrl+f
nmap <silent> <leader><C-s> :TestSuite<CR>   " , Ctrl+s
nmap <silent> <leader><C-l> :TestLast<CR>    " , Ctrl+l
nmap <silent> <leader><C-g> :TestVisit<CR>   " , Ctrl+g

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-terraform
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:terraform_align=1

