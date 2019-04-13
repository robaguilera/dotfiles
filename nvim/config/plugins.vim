call plug#begin('~/.local/share/nvim/plugged')
  " Start plugin installs

  " Global Plugins
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Movement
  Plug 'epilande/vim-es2015-snippets'
  Plug 'epilande/vim-react-snippets'

  " Neovim: {{{
  if has('nvim')
    " abstraction on top of neovim terminal
    Plug 'kassio/neoterm'

    " run tests at the speed of thought
    Plug 'janko-m/vim-test'

    " Highlight Yanked String
    Plug 'machakann/vim-highlightedyank'

    " Language Server Protocol (LSP) support for vim and neovim
    Plug 'autozimu/LanguageClient-neovim', {
          \ 'branch': 'next',
          \ 'do': 'bash install.sh',
          \ }
  endif
  " }}}

  " Text Manipulation
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tomtom/tcomment_vim'
  Plug 'junegunn/goyo.vim'

  " Javascript Plugins
  " JavaScript support (required by vim-jsx)
  Plug 'pangloss/vim-javascript'

  " React:
    " JSX support for react components
    Plug 'mxw/vim-jsx'

    " A Vim plugin that provides functions that modify React source files 
    Plug 'mvolkmann/vim-react', { 'for': 'javascript.jsx' }

    " extract partial render, rename tag, select self close tags
    Plug 'samuelsimoes/vim-jsx-utils', { 'for': 'javascript.jsx' }


  " JSON manipulation
  Plug 'tpope/vim-jdaddy', { 'for': 'json' }

  " syntax highlighting for styled components
  Plug 'styled-components/vim-styled-components', { 'branch': 'main', 'for': 'javascript.jsx' }

  " Ember
  Plug 'AndrewRadev/ember_tools.vim'
  Plug 'mustache/vim-mustache-handlebars'

  " Formatting
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'w0rp/ale'

  " Git
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  Plug 'airblade/vim-gitgutter'

  " CSS
  Plug 'ap/vim-css-color'
  Plug 'hail2u/vim-css3-syntax'

  " HTML
  Plug 'mattn/emmet-vim'

  " Style
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/limelight.vim'
  Plug 'dracula/vim'
  Plug 'kristijanhusak/vim-carbon-now-sh'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'ryanoasis/vim-devicons'

  " ?? What do these do?? "
  " Plug 'Yggdroot/indentLine', { 'on' : 'IndentLinesEnable'}
  " autocmd! User indentline doautocmd indentLine Syntax
  " Plug 'skywind3000/asyncrun.vim'
  " Plug 'tommcdo/vim-fubitive'
  " Plug 'Raimondi/delimitMate'
  " Plug 'terryma/vim-expand-region'
  " Plug 'adelarsq/vim-matchit'
  " Plug 'tpope/vim-sleuth'
  " Plug 'SirVer/ultisnips'


call plug#end()
