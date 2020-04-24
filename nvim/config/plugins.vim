" Install vim-plugged if not already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Start plugin installs
call plug#begin('~/.local/share/nvim/plugged')

" Nerdtree:
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" FZF:
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Clojure:
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'

" Indent Guides:
Plug 'Yggdroot/indentLine'

" Status bar:
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'edkolev/tmuxline.vim'

" Git:
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

 " Distraction Free:
Plug 'junegunn/goyo.vim'

" Focus Mode:
Plug 'junegunn/limelight.vim'

" Screenshotting Code:
Plug 'kristijanhusak/vim-carbon-now-sh'

" Styling Vim:
Plug 'arcticicestudio/nord-vim'
Plug 'artanikin/vim-synthwave84'
Plug 'luochen1990/rainbow'

" Neovim: {{{
if has('nvim')
  " Highlight Yanked String
  Plug 'machakann/vim-highlightedyank'
endif
" }}}

 " Text Manipulation:
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'wellle/targets.vim'

" COC - Autocompletion:
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Formatting:
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Physics based scrolling:
" Plug 'yuttie/comfortable-motion.vim'
Plug 'psliwka/vim-smoothie'

" JavaScript support (required by vim-jsx):
Plug 'pangloss/vim-javascript'

" JSX:
Plug 'MaxMEllon/vim-jsx-pretty'

" Emmet:
Plug 'mattn/emmet-vim'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'

" highlights template strings
Plug 'Quramy/vim-js-pretty-template'

" TPOPE:
Plug 'tpope/vim-eunuch'

" Multiple Cursors:
Plug 'terryma/vim-multiple-cursors'


Plug 'ryanoasis/vim-devicons'
call plug#end()
