set nocompatible              " be iMproved, required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-endwise'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'Yggdroot/indentLine'
Plugin 'janko-m/vim-test'
Plugin 'benmills/vimux'
Plugin 'mhartington/oceanic-next'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'natebosch/vim-lsc'
Plugin 'tpope/vim-dadbod'
Plugin 'tpope/vim-dotenv'
Plugin 'tpope/vim-rhubarb'
Plugin 'jiangmiao/auto-pairs'
Plugin 'NLKNguyen/papercolor-theme'

call vundle#end()

let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_auto_map = v:true

set backspace=indent,eol,start
let NERDTreeShowHidden=1

let mapleader = ";"
set noerrorbells visualbell t_vb=

filetype plugin indent on
syntax on
inoremap jj <Esc>

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
map <leader>mc :Mix compile<cr>
