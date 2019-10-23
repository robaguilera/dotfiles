call plug#begin('~/.local/share/nvim/plugged') " Start plugin installs

  " Global Plugins
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Yggdroot/indentLine'

  Plug 'SirVer/ultisnips'

  
  " Neovim: {{{
  if has('nvim')
    " Highlight Yanked String
    Plug 'machakann/vim-highlightedyank'
  endif
  " }}}

  " Text Manipulation
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'junegunn/goyo.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'wellle/targets.vim'


  " Javascript Plugins
  " JavaScript support (required by vim-jsx)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

  " Formatting
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

  " Git
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'jreybert/vimagit'

  " CSS
  " Plug 'ap/vim-css-color'
  " Plug 'hail2u/vim-css3-syntax'

  " HTML
  " Plug 'mattn/emmet-vim'

  " Style
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/limelight.vim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'dracula/vim'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'kristijanhusak/vim-carbon-now-sh'
  Plug 'ryanoasis/vim-devicons'
  Plug 'arcticicestudio/nord-vim'
  Plug 'sjl/badwolf'

  " Language Servers
  " Plug 'vscode-langservers/vscode-css-languageserver-bin'

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
