"Vundle init {{{
"
set nocompatible
filetype on
filetype off
let s:dotvim = fnamemodify(globpath(&rtp, 'maksvim.dir'), ':p:h')
let s:bundle_path=s:dotvim."/bundle/"
execute "set rtp+=".s:bundle_path."vundle"
call vundle#rc(s:bundle_path)
" }}}
"vundle package
Plugin 'gmarik/vundle'
"
"others packages
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/fugitive.vim'
Plugin 'vim-scripts/cygwin_utils.vim'
Plugin 'vim-scripts/VimDebug.vim'
Plugin 'scrooloose/nerdtree'
"color schemes
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'zaiste/Atom'
"
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
"Plugin 'szw/vimctrlspace'
Plugin 'terryma/vim-multiple-cursors'
"
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
"Plugin 'sjl/splice'
"
"general settings
filetype plugin indent on
syntax on
set shell=bash
      " Shell arguments; -c: argument
   set shellcmdflag=-c
      " Shell redirect; copy stderr to stdout
   set shellredir=>%s\ 2>&1
      " Shell pipe; copy stderr to stdout
   set shellpipe=2>&1\|\ tee
      " Shell quote; embed command within quotes
   "set shellxquote=\"
set shell=bash
set shellcmdflag=-c
set shellslash
"
"Mappings
" change leader
let mapleader = ","
let maplocalleader = "\\"
"edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>efv :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
"change dir to current file
nnoremap <silent> <F2> :lchdir %:p:h<CR>:pwd<CR>
nmap <tab> :NERDTreeToggle<cr>
"buffers navigation
nmap <leader>bn :bnext<cr>
nmap <leader>bp :bprevious<cr>
nmap <leader>bd :bd<cr>
"Folding
nnoremap <space> za
vnoremap <space> za
"Yank stack
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste
"moving
nmap <c-j> <c-d>M
nmap <c-k> <c-u>M
"
nnoremap / /\v
vnoremap / /\v

"settings
colorscheme atom
set guioptions-=T
set wildmenu
set backspace=indent,eol,start
set binary
set noeol
set completeopt=menu
set encoding=utf-8
set list
" always show status line
set laststatus=2
"set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:␣
"set listchars=tab:..,eol:¬,trail:␣
set listchars=tab:..,trail:␣
set textwidth=0
set nowrap
set nobackup
set nowritebackup
set noswapfile
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround
"searching
set incsearch
set showmatch
set gdefault
set matchtime=2
set hlsearch
"noremap <esc> :noh<cr>:call clearmatches()<cr>:<esc><cr>
"nmap <esc> :noh<cr><esc>
noremap <leader><esc> :noh<cr>call clearmatches()<cr>
"airline
let g:airline#extensions#branch#enabled = 1
"statusline
"set statusline=%<\ %f\ %{fugitive#statusline()}
"
set showcmd
set visualbell
"NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeDirArrows=1
"Syntatic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"bufferline
let g:bufferline_echo = 0
autocmd VimEnter *
  \ let &statusline='%{bufferline#refresh_status()}'
    \ .bufferline#get_status_string()
autocmd BufWritePre * %s/\v\s+$//ge
"autocmd BufRead * %s/\r//ge

let g:gitgutter_max_signs=10000
"Vimscript file settings ----------------------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}