" enable pathogen
execute pathogen#infect()

set lazyredraw

set nocompatible

" enable switching buffers without saving them first
set hidden

set timeoutlen=1000 ttimeoutlen=0

" don't add additional spaces after a sentence ends when joining lines
set nojoinspaces

" don't make backups
set noswapfile

" a <Tab> character counts as four spaces
set tabstop=4
" four spaces for indentation
set softtabstop=4
set shiftwidth=4

" highlight the boundary at 101 characters
set colorcolumn=101

" set the line width to be 100 characters, but don't wrap
"set textwidth=100

" convert <Tab> to spaces when entering it in insert mode
set expandtab

" display linenumbers
set number

" while entering a search already look for it
set incsearch

" highlight searches
set hlsearch

" use a 256 color terminal
set t_Co=256

" print line numbers and make margins symmetric
set printoptions=left:5pc,right:6pc,number:y

syntax enable
set background=dark

" enable italics
"let g:gruvbox_italic=1

colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

" enable fancy airline stuff
set encoding=utf-8
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
set laststatus=2
set noshowmode
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" highlight trailing space but dont highlight tabs
set listchars=trail:·,tab:\ \ 
set list

" use ninja to build programs
set makeprg=ninja

" don't use cursor keys in normal mode
inoremap <Up>     <NOP>
inoremap <Down>   <NOP>
inoremap <Left>   <NOP>
inoremap <Right>  <NOP>
noremap  <Up>     <NOP>
noremap  <Down>   <NOP>
noremap  <Left>   <NOP>
noremap  <Right>  <NOP>

" filetype specific behavior

" open help buffers as a vertical split
autocmd FileType help wincmd L

" remove trailing spaces
autocmd FileType c,cpp,fortran autocmd BufWritePre <buffer> %s/\s\+$//e

" use free form Fortran for f90 files
"autocmd FileType *.f90 :let fortran_free_source=1

" recognize triple slash comments
autocmd Filetype c,cpp set comments^=:///

" use `latexmk` to make tex documents
autocmd FileType tex setlocal makeprg=latexmk\ -pdf
