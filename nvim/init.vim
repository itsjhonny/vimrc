call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'townk/vim-autoclose'
Plug 'StanAngeloff/php.vim'
Plug 'doums/darcula'
Plug 'itchyny/lightline.vim'

call plug#end()

set nocompatible
set autoindent
set number
set numberwidth=2
set incsearch
set wildmenu
set confirm
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow splitright
set background=dark
set clipboard=unnamedplus
set termguicolors
colorscheme darcula
filetype on
filetype indent on
filetype plugin on
syntax on
let g:rainbow_active = 1


autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

map <C-q> :quit!<CR>
nmap <C-s> :w<CR>
map <C-a> <ESC>^
map <C-e> <ESC>$
nmap <F6> :NERDTreeToggle<CR>
autocmd BufEnter NERD_tree_* | execute 'normal R'
map <F2> gg=G
