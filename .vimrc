set nocompatible              " be iMproved, required
set noswapfile
set background=dark


let mapleader = " "

filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive' 
Plugin 'sheerun/vim-polyglot'
"Este e para debugar o python!!!
"Plugin 'puremourning/vimspector'

" Ale for LInt
Plugin 'dense-analysis/ale'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"the tag bar
Plugin 'majutsushi/tagbar'

Plugin 'RRethy/vim-illuminate'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line

"Pluging tipo power line clone
Plugin 'itchyny/lightline.vim'

"Pluging tipo colors teminal
"Plugin  'dracula/vim', { 'name': 'dracula' }
"Pluing collorscheme"

Plugin 'flazz/vim-colorschemes'

Plugin 'frazrepo/vim-rainbow'

Plugin 'morhetz/gruvbox'

"Pluging tab indicator
Plugin 'nathanaelkane/vim-indent-guides'

"Pluging to file manager
Plugin 'preservim/nerdtree'

"Pluging to close brackets
Plugin 'jiangmiao/auto-pairs'

"Este e para debugar o python!!!
"Plugin 'puremourning/vimspector'
"
" This will emulate the sublime Text multiple selections
Plugin 'terryma/vim-multiple-cursors'

" This plugin will snipped html
Plugin 'mattn/emmet-vim'

" This Plugin is for filesearch

Plugin 'junegunn/fzf.vim'


call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"----------------------------------------------------------------------
" Vim configuration " " enable syntax highlighting

" show line numbers
set number relativenumber

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

set smartindent
" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

set incsearch

set wildmenu

set confirm

set colorcolumn=80

set laststatus=2

set undodir=~/.vim/undodir

set undofile

colorscheme gruvbox



" enable all Python syntax highlighting features

let python_highlight_all = 4

"Mapping some usefull shortcut ----------------------------------------------

"map q :quit<CR>

"map <C-s> :w<CR> 

map <C-e> :Ex<CR>

"map <C-v> :vsplit<CR>

"map <C-h> :split<CR>

map <C-c> :close<CR>
"NercTree------------------------------------------------------------------------
map dnn :NERDTreeToggle<CR>
map drr :NERDTreeRefreshRoot<CR>
"Tagbar------------------------------------------------------------------------
map dtt :TagbarOpen<CR>
map dtc :TagbarClose<CR>
"------------------------------------------------------------------------------
"Git--------------------------------------------------------------------------
map gss :Gstatus<CR>
map gcc :Gcommit<CR>
map gpp :gpush<cr>
"------------------------------------------------------------------------------
"Tabs--------------------------------------------------------------------------
map gtn :tabNext<cr>
map gtc :tabclose<cr>

"YouCompleteMe--------------------------------------------------------------------------
map dgd :YcmCompleter GoToDeclaration<CR>

" Remaps.  This is where the magic of vim happens
nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>


"FZF --------------------------------------------

map dff :Files<cr>
map drg :Rg<cr>


"Ale lyint Conf--------------------------------------------------------------------------

let b:ale_linters = ['flake8', 'pylint']
"let b:ale_linters = {'python':['flake8', 'pylint'],'javascript':['eslint']}
"-----------------------------------------------------------------------------

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3.8' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3.8' shellescape(@%, 1)<CR>

"-----------------------------------------------------------------------------
"Indentação por padrao esta marcada

let g:indent_guides_enable_on_vim_startup = 1
let g:rainbow_active = 1

"Vim inspector Conf
"let g:vimspector_enable_mappings = 'HUMAN'
"packadd! vimspector
set spell spelllang =en_ca
syntax enable

