" enable pathogen
execute pathogen#infect()

let g:makeshift_use_pwd_first=1

" helps set the right (true)colors if vim is started under tmux
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum

" fixes vim not displaying underlined spell mistakes
set t_Cs=

" use truecolor (24-bit)
if exists('+termguicolors')
    set termguicolors
endif

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

" convert <Tab> to spaces when entering it in insert mode
set expandtab

" display linenumbers
set number

" while entering a search already look for it
set incsearch

" highlight searches
set hlsearch

" print line numbers and make margins symmetric
set printoptions=left:5pc,right:6pc,number:y

" don't fold
set nofoldenable

syntax enable
filetype plugin indent on

set background=dark

" enable italics
let g:gruvbox_italic=1

colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

" enable fancy airline stuff
set encoding=utf-8
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
set laststatus=2
set noshowmode
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" after saving, automatically format Rust code
let g:rustfmt_autosave=1

" highlight trailing space but dont highlight tabs
set listchars=trail:·,tab:\ \ 
set list

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

au FileType gitcommit,gitrebase set viminfo="NONE"

" open help buffers as a vertical split
autocmd FileType help wincmd L

" remove trailing spaces
"autocmd FileType c,cpp,fortran autocmd BufWritePre <buffer> %s/\s\+$//e

" wrap comments and text when explicitly requested at 100 characters
" join comments without the second comment marker
autocmd FileType c,cpp,fortran set textwidth=100 formatoptions=cjq

" use free form Fortran for f90 files
"autocmd FileType *.f90 :let fortran_free_source=1

" recognize triple slash comments
autocmd Filetype c,cpp set comments^=:///
