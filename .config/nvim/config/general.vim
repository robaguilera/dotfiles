filetype plugin indent on
syntax enable
syntax on

" Deoplete Init
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Neovim Settings

" Aesthetics
set background="dark" or light if you prefer the light version
if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme spacemacs-theme

hi CursorLineNR guifg=tomato
autocmd BufRead,BufNewFile *.md setlocal spell complete+=kspell
hi SpellBad guibg=#ff2929 guifg=#f9f9f9" ctermbg=224

" General Config
set encoding=utf-8
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set relativenumber
set wrap
set clipboard=unnamedplus

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
" block select not limited by shortest line
set virtualedit=
set laststatus=2

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu
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
let g:jsx_ext_required = 0
