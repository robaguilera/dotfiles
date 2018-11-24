" ===== Custom Settings ====
let mapleader = ','

" ----------------------------------------------------------------------------
" Normal Mode "
" ----------------------------------------------------------------------------
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>src :source %<cr>

" ----------------------------------------------------------------------------
" Navigate between display lines
" ----------------------------------------------------------------------------
noremap  <silent> <Up>   gk
noremap  <silent> <Down> gj
noremap  <silent> k gk
noremap  <silent> j gj
noremap  <silent> <Home> g<Home>
noremap  <silent> <End>  g<End>

" ----------------------------------------------------------------------------
" Moving lines
" ----------------------------------------------------------------------------
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv

" ----------------------------------------------------------------------------
" Visual Mode "
" ----------------------------------------------------------------------------
" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv
" Copy to osx clipboard
vnoremap <C-c> "*y<CR>
vnoremap <leader>/ :TComment<cr> 

" ----------------------------------------------------------------------------
" Remap
" ----------------------------------------------------------------------------
noremap ;; :

" Insert Mode "
imap jj <esc>
" delete line while in insert mode

" split window management
nnoremap <leader>h :split<CR>
nnoremap <leader>j :vsplit<CR>
nnoremap <leader>no :noh<CR>

" folding code
nnoremap <space> za

" plugins
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nr :NERDTreeRefreshRoot<CR>

nnoremap <leader>gits :Gstatus<CR>
nnoremap <leader>gitc :GCommit<CR>
nnoremap <leader>gitp :GPush<CR>

nnoremap <leader>ll :Limelight!!<cr>

" ----------------------------------------------------------------------------
" FZF
" ----------------------------------------------------------------------------
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Find<cr>
nnoremap <c-b> :Buffers<cr>
nnoremap <c-h> :History<cr>
nnoremap <c-s> :Snippets<cr>
