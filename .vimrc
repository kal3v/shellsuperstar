" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
silent! execute pathogen#infect()

" Display
syntax enable
set number
set cursorline
set background=dark

" Buffers
noremap gn :bn<cr>
noremap gp :bp<cr>
noremap gd :bd<cr>

" Navigation
noremap k gk
noremap j gj
noremap gk k
noremap gj j

" Improve search
set ignorecase
set smartcase

" Turn off swap files
set noswapfile
set nobackup
set nowritebackup

" Use braces to determine when to auto indent
set smartindent

" Tabs
set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" Airline
set laststatus=2
let g:airline_theme = 'term'
let g:airline#extensions#tabline#enabled = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
noremap <F11> :SyntasticToggleMode<cr>

" Enable spell check by default for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell
