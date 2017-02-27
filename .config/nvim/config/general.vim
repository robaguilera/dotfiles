
" Following settings needed after plugin install
filetype plugin indent on
filetype plugin on

" System Settings
" ----------------------------------------------------------{{{

" Neovim Settings
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set clipboard+=unnamedplus

"" Currently needed for neovim paste issue
set pastetoggle=<f6>
set nopaste
autocmd BufWritePre * %s/\s\+$//e"

"  }}}

" ================ General Config ====================

set t_Co=256
set encoding=utf-8
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set clipboard=unnamed
set relativenumber
set wrap
colorscheme neodark

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ============== Misc ===============================
set number
set conceallevel=0
" block select not limited by shortest line
set virtualedit=
set laststatus=2
"set colorcolumn=100
set wrap linebreak nolist
set relativenumber

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=node_modules
set wildignore+=bower_components
set wildignore+=*.png,*.jpg,*.gif

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" Couple of CSS niteties {{{
" " Insert a line above the current set of property/declarations
nnoremap <leader>t vipo<ESC>o
" Insert a line below the current set of property/declarations
nnoremap <leader>b vip<ESC>O
" See: http://blog.millermedeiros.com/vim-css-complete/
" Make selection of CSS declaration
nnoremap <leader>A vip
" Make inner selection of nested CSS easy
nnoremap <leader>a vaBV
" }}}

" autocomplete paths easier
inoremap <c-f> <c-x><c-f>

" split window management
nnoremap <leader>h :split<CR>
nnoremap <leader>j :vsplit<CR>
nnoremap <C-h> <C-w>r
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ============= Normal Mode =============
" Navigate between display lines
noremap  <silent> <Up>   gk
noremap  <silent> <Down> gj
noremap  <silent> k gk
noremap  <silent> j gj
noremap  <silent> <Home> g<Home>
noremap  <silent> <End>  g<End>

" ============ Visual Mode ==============
"
" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv

" Copy to osx clipboard
vnoremap <C-c> "*y<CR>

vnoremap y myy`y
vnoremap Y myY`y
