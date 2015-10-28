" enable pathogen
execute pathogen#infect()

set timeoutlen=1000 ttimeoutlen=0

"set encoding=utf-8

" four spaces for indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4

" display linenumbers
set number

" make forward and backward search more powerful
set incsearch
set hlsearch

set textwidth=80
set colorcolumn=81
"set number
set t_Co=256

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

" recognize triple slash comments in c and c++
autocmd Filetype c,cpp set comments^=:///

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
