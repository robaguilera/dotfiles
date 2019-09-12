" General Settings {{{
  filetype plugin indent on " try to recognize filetypes and load rel' plugins
  set nocompatible          " vim, no vi
  scriptencoding utf-16     " allow emojis in vimrc
  syntax on                 " syntax highlighting
  set termguicolors         " enable true colors
"}}}

" Aesthetics
set background=dark
colorscheme nord
let g:airline_theme='dracula'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

hi CursorLineNR guifg=tomato
autocmd BufRead,BufNewFile *.md setlocal spell
hi SpellBad guibg=#ff2929 guifg=#f9f9f9" ctermbg=224
set complete+=kspell

" General Config
set number                  " Line numbers are good
set relativenumber
set backspace=2
set history=200             " Store lots of :cmdline history
set ruler                   " Show the cursor position always
set showcmd                 " Show incomplete cmds down the bottom
set ignorecase              " Ignore case in searches
set smartcase               " Use case sensitive if captial letters are present
set showmode                " Show current mode down the bottom
set visualbell              " No sounds
set autoread                " Reload files changed outside vim
set noshowmode              " Airline shows status
set ttyfast                 " Should make scrolling faster
set lazyredraw              " Should make scrolling faster
set clipboard=unnamedplus

" ================ Indentation ======================

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

" ============== Misc ===============================
" block select not limited by shortest line
set virtualedit=
set laststatus=2

" ================ Folds ============================

set foldmethod=manual       " Set folds by syntax of current language
let javaScript_fold=1
set foldlevelstart=99

" ================ Completion =======================

set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=node_modules
set wildignore+=bower_components
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================
"
"Start scrolling when we're 8 lines away from margins
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set mouse=a " Enable scrolling with mouse

" ================ Backups ========================
set backupdir=~/.vim-tmp,~/.tmp,~./tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~./tmp,/var/tmp,/tmp

" ================ Syntax ========================
" let g:jsx_ext_required = 0

