" ================ General ======================
augroup specify_filetype
  autocmd!
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile *.txt set filetype=text
augroup END

" Longer leader key timeout
set timeout timeoutlen=500

" try to recognize filetypes and load rel' plugins and indent.vim file
filetype plugin indent on

" allow emojis in vimrc
scriptencoding utf-16

" enable true colors
set termguicolors

" Line numbers are good
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set backspace=indent,eol,start

" Store lots of :cmdline history
set history=200

" Show the cursor position always
set ruler

" Show incomplete cmds down the bottom
set showcmd

" Don't give completion messages like 'match 1 of 2'
" or 'The only match'
set shortmess+=c

" Ignore case in searches
set ignorecase

" Use case sensitive if captial letters are present
set smartcase

" Show current mode down the bottom
set showmode

" No sounds
set visualbell

" Reload files changed outside vim
set autoread

" Airline shows status
set noshowmode
set clipboard^=unnamed,unnamedplus

" Aesthetics
set background=dark
colorscheme synthwave84
let g:airline_theme='synthwave84'

" Switching files without causes file to hide, not close
set hidden

" Split window appears right the current one.
set splitright

" Spelling
hi CursorLineNR guifg=tomato

" Enable spell-checking for certain files
autocmd FileType text,markdown setlocal spell
hi SpellBad guibg=#ff2929 guifg=#f9f9f9" ctermbg=224
set complete+=kspell

" Limit line length for text files
autocmd FileType text,markdown,tex setlocal textwidth=180

" Don't automatically collapse markdown
set conceallevel=0

" Indentation
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set showtabline=224

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Set folds by syntax of current language {{{
set foldmethod=indent
set foldlevelstart=99
" }}}

set wildmenu
set wildmode=longest:full,full

"Start scrolling when we're 8 lines away from margins
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set mouse=a " Enable scrolling with mouse

" Don't automatically insert a comma
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Jump to the last known position when reopening a file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
