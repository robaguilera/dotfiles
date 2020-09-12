" ===== Custom Settings ==== "
let mapleader = ','
nnoremap <Space> <Nop>

imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l

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

" Better indenting
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
vnoremap < <gv
vnoremap > >gv

if exists('g:vscode')
  " Simulate same TAB behavior in VSCode
  nmap <Tab> :Tabnext<CR>
  nmap <S-Tab> :Tabprev<CR>

else
  " Better nav for omnicomplete
  inoremap <expr> <c-j> ("\<C-n>")
  inoremap <expr> <c-k> ("\<C-p>")

  " I hate escape more than anything else
  inoremap jk <Esc>
  inoremap kj <Esc>
  imap jj <esc>

  " Move selected line / block of text in visual mode
  " shift + k to move up
  " shift + j to move down
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv

  " <TAB>: completion.
  inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

  " split window management
  nnoremap <leader>j :split<CR>
  nnoremap <leader>l :vsplit<CR>

  " buffers
  nnoremap <leader>t :bnext<CR>
  nnoremap <leader>e :bprevious<CR>
  nnoremap <leader>bk :bd<CR>
  nnoremap <leader>bq :bp <BAR> bd #<CR>
  " Close the current buffer and move to the previous one
  " This replicates the idea of closing a tab
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

  " plug stuff
  nnoremap <leader>pi :pluginstall
  nnoremap <leader>pc :plugclean

  " easy motion
  map <leader><leader>f <plug>(easymotion-overwin-f)
  " s{char}{char} to move to {char}{char}
  map <leader><leader>c <plug>(easymotion-overwin-f2)
  " move to line
  map <leader><leader>l <plug>(easymotion-bd-jk)
  " move to word
  map  <leader><leader>w <plug>(easymotion-bd-w)
endif


" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
