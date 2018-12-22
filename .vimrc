" Display
syntax enable
set number
set cursorline
set background=dark
" get a line break at a word boundary
set linebreak

" Buffers
noremap gn :bn<cr>
noremap gp :bp<cr>
noremap gd :bd<cr>

" Navigation
noremap k gk
noremap j gj
noremap gk k
noremap gj j

" Leader
let mapleader = "\<Space>"

" Improve search
set ignorecase
set smartcase
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
nnoremap <leader>n :nohlsearch<CR>

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

" Map Esc to jk
inoremap jk <Esc>

" Allow saving of files as sudo when I forgot to use sudoedit
cmap w!! w !sudo tee > /dev/null %

" Enable spell check by default for markdown and wiki files
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.wiki setlocal spell

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerman/vim-plugin-viewdoc'
Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'vimwiki/vimwiki'
Plugin 'python-mode/python-mode'

source ~/shellsuperstar/specific_plugins.vim

call vundle#end() 
filetype plugin indent on

"
" Plugin configuration
"

" Viewdoc
" open documentation in a new buffer
let g:viewdoc_open='new'
let g:viewdoc_only=1

" Airline
set laststatus=2
let g:airline_theme = 'term'
let g:airline#extensions#tabline#enabled = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
noremap <F12> :SyntasticToggleMode<cr>
let g:syntastic_python_checkers = ['pyflakes', 'python']

"" Pymode
let g:pymode = 1
let g:pymode_options = 2
let g:pymode_virtualenv = 1
let g:pymode_run = 0

" Set colour scheme
colorscheme distinguished

" vimwiki 
let g:vimwiki_folding = 'syntax'
let g:vimwiki_list = [{'path': '~/notes/', 'ext': '.wiki'}]
