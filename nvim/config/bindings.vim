" ===== Custom Settings ====
let mapleader = ','

" Normal Mode "
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>src :source %<cr>
nmap <leader>gt :tabn<cr>

" Navigate between display lines
noremap  <silent> <Up>   gk
noremap  <silent> <Down> gj
noremap  <silent> k gk
noremap  <silent> j gj
noremap  <silent> <Home> g<Home>
noremap  <silent> <End>  g<End>

" Visual Mode "
" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv
" Copy to osx clipboard
vnoremap <C-c> "*y<CR>
vnoremap <c-/> :TComment<cr> 

" Remap
noremap ;; :

" Insert Mode "
imap jj <esc>
" imap <leader>w <esc>:Neoformat<CR>:w<CR>
" delete line while in insert mode
inoremap <c-d> <esc>ddi

" split window management
nnoremap <leader>h :split<CR>
nnoremap <leader>j :vsplit<CR>
nnoremap <leader>no :noh<CR>

" folding code
nnoremap <space> za

" plugins
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

nnoremap <leader>gits :Gstatus<CR>
nnoremap <leader>gitc :GCommit<CR>
nnoremap <leader>gitp :GPush<CR>

nnoremap <leader>ll :Limelight!!<cr>

