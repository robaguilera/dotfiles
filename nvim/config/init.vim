set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" General
Plugin 'gmarik/Vundle.vim'
Plugin 'ervandew/supertab'
" Plugin 'benekastah/neomake'
Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Yggdroot/indentline'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'terryma/vim-multiple-cursors'

" Trial
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': ['javascript', 'javascript.jsx']}
Plugin 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx']}
Plugin 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx']}

Plugin 'Lokaltog/vim-easymotion'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-unimpaired'
" Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
" Plugin 'nelstrom/vim-visual-star-search'
" Plugin 'moll/vim-bbye'
" Plugin 'jaywilliams/vim-vwilight'
"Plugin 'gorodinskiy/vim-coloresque'
Plugin 'rking/ag.vim'
" Plugin 'benfrain/vim-fidget'
" Plugin 'honza/vim-snippets'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jiangmiao/auto-pairs'

" HTML
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

" CSS
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ap/vim-css-color'
Plugin 'cakebaker/scss-syntax.vim'

" Javascripts
" Plugin 'marijnh/tern_for_vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/MatchTagAlways'
" Plugin 'HerringtonDarkholme/yats.vim'

"JSON
Plugin 'elzr/vim-json'

" PHP
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'Rican7/php-doc-modded'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'stanangeloff/php.vim'
Plugin 'paulyg/Vim-PHP-Stuff'
Plugin 'dsawardekar/wordpress.vim'
"
" Appearances
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'dracula/vim'

call vundle#end()
