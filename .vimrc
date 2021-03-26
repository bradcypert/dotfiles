" important!!
set termguicolors

" the configuration options should be placed before `colorscheme miramare`
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1

colorscheme miramare

let mapleader = ";"
set noerrorbells visualbell t_vb=

filetype plugin indent on
syntax on
inoremap jj <Esc>

set backspace=indent,eol,start

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
"set nofoldenable
set number
set ruler
set expandtab
set tabstop=2
set shiftwidth=2
set visualbell           " don't beep
set noerrorbells

set encoding=utf-8

set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set listchars+=extends:>
set list

set autoread

set ignorecase
set smartcase
highlight Pmenu ctermbg=238 gui=bold
set hlsearch
set nowrap

set noswapfile
set nobackup
set autoread
set background=dark

map <leader>n :NERDTreeToggle<CR>
map <leader>ntf :NERDTreeFind<cr>

"Gives us C + Up / Down to move lines up or down
nmap <C-Up> ddkP
nmap <C-Down> ddp

vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
