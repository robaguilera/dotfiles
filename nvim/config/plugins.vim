call plug#begin('~/.local/share/nvim/plugged')
  " Start plugin installs

  " Global Plugins
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'yuttie/comfortable-motion.vim'
  Plug 'tpope/vim-sleuth'

  " Movement
  Plug 'easymotion/vim-easymotion'
  Plug 'epilande/vim-es2015-snippets'
  Plug 'epilande/vim-react-snippets'
  Plug 'SirVer/ultisnips'
  Plug 'https://github.com/wesQ3/vim-windowswap'

  " Text Manipulation
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tomtom/tcomment_vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'terryma/vim-expand-region'

  " Javascript Plugins

  Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx']}
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  "Plugin 'chemzqm/vim-jsx-improve'
  Plug 'valloric/MatchTagAlways'
  Plug 'styled-components/vim-styled-components'

  " Typescript Plugins
  Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
  Plug 'Quramy/tsuquyomi', { 'do': 'npm install -g typescript' }
  Plug 'mhartington/deoplete-typescript'

  " Formatting
  Plug 'Yggdroot/indentLine'
  Plug 'Raimondi/delimitMate'
  Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }

  " Git
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'mattn/webapi-vim'
  Plug 'mattn/gist-vim'

  " CSS
  Plug 'ap/vim-css-color'
  Plug 'hail2u/vim-css3-syntax'

  " HTML
  Plug 'mattn/emmet-vim'

  " Style
  Plug 'ryanoasis/vim-devicons'
  Plug 'rakr/vim-one'
  Plug 'rakr/vim-two-firewatch'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/limelight.vim'

call plug#end()
