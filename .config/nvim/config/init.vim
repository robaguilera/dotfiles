call plug#begin('~/.local/share/nvim/plugged')
  " Start plugin installs
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Global Plugins
  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'Shougo/neocomplete.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " Javascript Plugins
  Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx']}
  Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx']}
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  " Typescript Plugins
  Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
  Plug 'Quramy/tsuquyomi', { 'do': 'npm install -g typescript' }
  Plug 'mhartington/deoplete-typescript'

  " Style
  Plug 'ryanoasis/vim-devicons'
  Plug 'rakr/vim-one'
  Plug 'rakr/vim-two-firewatch'

  " Formatting
  Plug 'Yggdroot/indentLine'
  Plug 'Raimondi/delimitMate'
  Plug 'valloric/MatchTagAlways'
  Plug 'sbdchd/neoformat'

  " Git
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'mattn/webapi-vim'
  Plug 'mattn/gist-vim'

  " Manipulation
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tomtom/tcomment_vim'
  Plug 'terryma/vim-multiple-cursors'

  " CSS
  Plug 'ap/vim-css-color'
  Plug 'hail2u/vim-css3-syntax'

  " HTML
  Plug 'mattn/emmet-vim'
call plug#end()
