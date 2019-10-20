" ================ General ======================

" General Config
filetype plugin indent on " try to recognize filetypes and load rel' plugins and indent.vim file
scriptencoding utf-16     " allow emojis in vimrc
set termguicolors         " enable true colors

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
set clipboard^=unnamed,unnamedplus

" Aesthetics
set background=dark
colorscheme nord
let g:airline_theme='dracula'

" Spelling
hi CursorLineNR guifg=tomato
autocmd BufRead,BufNewFile *.md setlocal spell
hi SpellBad guibg=#ff2929 guifg=#f9f9f9" ctermbg=224
set complete+=kspell

" Indentation
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" ================ Folds ============================

set foldmethod=manual       " Set folds by syntax of current language
let javaScript_fold=1
set foldlevelstart=99

" ================ Completion =======================

set wildmenu
set wildmode=longest:full,full

" ================ Scrolling ========================
"
"Start scrolling when we're 8 lines away from margins
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set mouse=a " Enable scrolling with mouse

