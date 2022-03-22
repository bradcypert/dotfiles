" important!!
set termguicolors

" the configuration options should be placed before `colorscheme miramare`
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1

let mapleader = ";"
set noerrorbells visualbell t_vb=

filetype plugin indent on
syntax on
inoremap jj <Esc>

set backspace=indent,eol,start


" COC settings
" Give more space for displaying messages.
set cmdheight=2
set updatetime=500
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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

autocmd vimenter * ++nested colorscheme gruvbox

nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
