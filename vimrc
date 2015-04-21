"Vundle init
"
set nocompatible
filetype on
filetype off
let s:dotvim = fnamemodify(globpath(&rtp, 'maksvim.dir'), ':p:h')
let s:bundle_path=s:dotvim."/bundle/"
execute "set rtp+=".s:bundle_path."vundle"
call vundle#rc(s:bundle_path)
"
"vundle package
Plugin 'gmarik/vundle'
"
"others packages
Plugin 'scrooloose/nerdtree'
Plugin 'troydm/easybuffer.vim'
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'zaiste/Atom'
"
"general settings
filetype plugin indent on
syntax on
"
"Mappings
"change dir to current file
nnoremap <silent> <F2> :lchdir %:p:h<CR>:pwd<CR>
nmap <tab> :NERDTreeToggle<cr>
nnoremap <space> za
vnoremap <space> za
"
"settings
colorscheme torte 
set guioptions-=T
set backspace=indent,eol,start
set binary
set noeol
set completeopt=menuone,preview
set encoding=utf-8
set list
"set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:␣
set listchars=tab:->,eol:¬,trail:␣
set textwidth=100
set nowrap
set nobackup
set nowritebackup
set noswapfile
set expandtab
set tabstop=2
set shiftwidth=2
"searching
set incsearch
set showmatch
set matchtime=2
set hlsearch

set showcmd
set visualbell
"NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeDirArrows=1

