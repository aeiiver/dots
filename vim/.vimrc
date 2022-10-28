"""""""""""""""""""""""""""""""""""""""
""              general              ""
""                                   ""
"""""""""""""""""""""""""""""""""""""""

" context
set number relativenumber
set ruler

" indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set smarttab

" search
set nohlsearch
set incsearch
set ignorecase smartcase

" user convenience
set wildmenu
set backspace=eol,start,indent
set cmdheight=1

" colors on syntax
"
syntax enable
filetype plugin on
filetype indent on

set noerrorbells
set novisualbell


""""""""""""""""""""""""""""""""""""""
""               keys               ""
""                                  ""
""""""""""""""""""""""""""""""""""""""

let mapleader = "<Space>"

" move lines
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
xnoremap <M-j> :m '>+1<CR>gv=gv
xnoremap <M-k> :m '<-2<CR>gv=gv

" duplicate lines
nnoremap <S-M-j> :co .<CR>==
nnoremap <S-M-k> :co .-1<CR>==
inoremap <S-M-j> <Esc>:co .<CR>==gi
inoremap <S-M-k> <Esc>:co .-1<CR>==gi
xnoremap <S-M-j> :co '<-1<CR>gv=gv
xnoremap <S-M-k> :co '><CR>gv=gv

" open netrw
nnoremap <leader>r <cmd>Ex<CR>
