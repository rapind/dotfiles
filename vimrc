set nocompatible  		" We don't want vi compatibility.

" stuff from nvie.com/posts/how-i-boosted-my-vim
set backspace=indent,eol,start 	" allow backspacing over everything in insert mode
set autoindent			" always set autoindenting on   
set copyindent
set shiftwidth=2		" number of spaces for autoindenting
set shiftround                  " nuse multiple of siftwidth when indenting with '<' and ': 
set showmatch 			" show matching parens
set ignorecase			" ignore case when searching
set smartcase			" ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch			" highlight search terms!
set incsearch			" show search matches as you type
set wrapscan 			" When searching, will wrap from bottom of buffer to top when 'nexting'
set expandtab 			" Use spaces instead of the actual tab char
set tabstop=2
set number			" Show line numbers
set history=1000   
set undolevels=1000
set title
set nobackup
set noswapfile
set nowritebackup
set pastetoggle=<F2>
nnoremap ; :

set ts=2
filetype on  			" Automatically detect file types.
filetype plugin on
filetype indent on

syntax enable			" SYntax highlighting
colorscheme Tomorrow-Night	" Color scheme
set gfn=Monaco:h14		" Font

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:ctrlp_map = '<D-t>'
let g:ctrlp_cmd = 'CtrlP'

" Files to ignore for Command-T / other listings
set wildignore+=*.o,*.obj,.git,public/stylesheets/**,public/cache/**,tmp/**

" Show whitespace
set list listchars=tab:»·,trail:·

" Highlight trailing/leading whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Highlight 80 character boundry
" set colorcolumn=81

" Show syntastic errors in location-list
let g:syntastic_auto_loc_list=1
let g:syntastic_auto_loc_list_height=3


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
"
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kchmck/vim-coffee-script'

" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
