" ===== Custom Settings ==== "

let mapleader = ','

" Normal Mode
nmap <leader>w :w<cr>
nmap <leader>W :wq<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>
nmap <leader>src :source %<cr>
nnoremap <leader>no :noh<CR>

" Navigate between display lines
noremap  <silent> <Up>   gk
noremap  <silent> <Down> gj
noremap  <silent> k gk
noremap  <silent> j gj
noremap  <silent> <Home> g<Home>
noremap  <silent> <End>  g<End>

" Moving lines
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Commenting Out
vnoremap <leader>/ :TComment<cr> 

" Remap
noremap ;; :
imap jj <esc>

" split window management
nnoremap <leader>j :split<CR>
nnoremap <leader>l :vsplit<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" buffers
nnoremap <leader>t :bnext<CR>
nnoremap <leader>tt :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nnoremap <leader>bq :bp <BAR> bd #<CR>

" Cycle tabs with Tab and Shift+Tab
" TODO
" I like tab to indent lines, find a better binding

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

" FZF

nnoremap <c-p> :call FZFOpen(':Files')<CR>
nnoremap <c-f> :call FZFOpen(':Rg')<cr>
nnoremap <c-b> :call FZFOpen(':Buffers')<cr>
nnoremap <c-y> :call FZFOpen(':History')<cr>
nnoremap <c-s> :call FZFOpen(':Snippets')<cr>

" Git
" Jump between hunks
nnoremap <leader>gn :GitGutterNextHunk<CR>  " git next
nnoremap <leader>gp :GitGutterPrevHunk<CR>  " git previous

" Hunk-add and hunk-revert for chunk staging
nnoremap <Leader>ga :GitGutterStageHunk<CR>  " git add (chunk)
nnoremap <Leader>gu :GitGutterUndoHunk<CR>   " git undo (chunk)
