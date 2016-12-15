" enable pathogen
execute pathogen#infect()

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

" convert <Tab> to spaces when entering it in insert mode
set expandtab

" display linenumbers
set number

" make forward and backward search more powerful
set incsearch
set hlsearch

" enable switching buffers without saving them first
set hidden

" use a 256 color terminal
set t_Co=256

" print line numbers and make margins symmetric
set printoptions=left:5pc,number:y

syntax enable
set background=dark

" enable italics
"let g:gruvbox_italic=1

colorscheme gruvbox

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

" don't use cursor keys in normal mode
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" C/C++ specific behavior

" break text at 80 chars and highlight the boundary
autocmd FileType c,cpp set textwidth=80 colorcolumn=81

" remove trailing spaces
autocmd FileType c,cpp autocmd BufWritePre <buffer> %s/\s\+$//e

" recognize triple slash comments
autocmd Filetype c,cpp set comments^=:///
