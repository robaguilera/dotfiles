" Install vim-plugged if not already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Start plugin installs
call plug#begin('~/.local/share/nvim/plugged') 

" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Indent Guides
Plug 'Yggdroot/indentLine'

" Code Snippets Engine
Plug 'SirVer/ultisnips'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

 " Distraction Free
Plug 'junegunn/goyo.vim'

" Focus Mode 
Plug 'junegunn/limelight.vim'

" Screenshotting Code
Plug 'kristijanhusak/vim-carbon-now-sh'

" Styling Vim
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'arcticicestudio/nord-vim'
Plug 'sjl/badwolf'

" Neovim: {{{
if has('nvim')
  " Highlight Yanked String
  Plug 'machakann/vim-highlightedyank'
endif
" }}}

 " Text Manipulation
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'wellle/targets.vim'

" COC - Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Formatting
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Physics based scrolling
Plug 'yuttie/comfortable-motion.vim'


 " Javascript Plugins
 " JavaScript support (required by vim-jsx)
 " Plug 'pangloss/vim-javascript'
 " Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

 " React:
   " JSX support for react components
   " Plug 'mxw/vim-jsx'
   "
   " " A Vim plugin that provides functions that modify React source files 
   " Plug 'mvolkmann/vim-react', { 'for': 'javascript.jsx' }
   "
   " " extract partial render, rename tag, select self close tags
   " Plug 'samuelsimoes/vim-jsx-utils', { 'for': 'javascript.jsx' }


 " JSON manipulation
 " Plug 'tpope/vim-jdaddy', { 'for': 'json' }

 " syntax highlighting for styled components
 " Plug 'styled-components/vim-styled-components', { 'branch': 'main', 'for': 'javascript.jsx' }

 " Ember
 " Plug 'AndrewRadev/ember_tools.vim'
 " Plug 'mustache/vim-mustache-handlebars'

 " CSS
 " Plug 'ap/vim-css-color'
 " Plug 'hail2u/vim-css3-syntax'

 " HTML
 " Plug 'mattn/emmet-vim'


 " ?? What do these do?? "
 " Plug 'Yggdroot/indentLine', { 'on' : 'IndentLinesEnable'}
 " autocmd! User indentline doautocmd indentLine Syntax
 " Plug 'skywind3000/asyncrun.vim'
 " Plug 'tommcdo/vim-fubitive'
 " Plug 'Raimondi/delimitMate'
 " Plug 'terryma/vim-expand-region'
 " Plug 'adelarsq/vim-matchit'
 " Plug 'tpope/vim-sleuth'


call plug#end()
