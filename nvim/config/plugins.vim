call plug#begin('~/.local/share/nvim/plugged')
  " Start plugin installs

  " Global Plugins
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-sleuth'
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Movement
  Plug 'epilande/vim-es2015-snippets'
  Plug 'epilande/vim-react-snippets'
  Plug 'SirVer/ultisnips'

  " Text Manipulation
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tomtom/tcomment_vim'
  Plug 'junegunn/goyo.vim'
  Plug 'terryma/vim-expand-region'
  Plug 'adelarsq/vim-matchit'

  " Javascript Plugins
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
  Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'pangloss/vim-javascript'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'mxw/vim-jsx'
  Plug 'styled-components/vim-styled-components'

  " Ember
  Plug 'AndrewRadev/ember_tools.vim'
  Plug 'mustache/vim-mustache-handlebars'

  " Formatting
  Plug 'Raimondi/delimitMate'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'w0rp/ale'

  " Git
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
  Plug 'tommcdo/vim-fubitive'
  Plug 'junegunn/gv.vim'
  Plug 'airblade/vim-gitgutter'

  " CSS
  Plug 'ap/vim-css-color'
  Plug 'hail2u/vim-css3-syntax'

  " HTML
  Plug 'mattn/emmet-vim'

  " Style
  Plug 'ryanoasis/vim-devicons'
  Plug 'Yggdroot/indentLine', { 'on' : 'IndentLinesEnable'}
  autocmd! User indentline doautocmd indentLine Syntax
  Plug 'rakr/vim-one'
  Plug 'rakr/vim-two-firewatch'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/limelight.vim'
  Plug 'dracula/vim'
  Plug 'morhetz/gruvbox'
  Plug 'kristijanhusak/vim-carbon-now-sh'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'skywind3000/asyncrun.vim'


call plug#end()
