" ============ Custom Settings ========================

let mapleader = ','


" Normal Mode "
nmap <leader>w :w!<cr>
nmap <leader>q :q
nmap <leader>src :source %<cr>
nmap <leader>gt :tabn<cr>

" Remap
noremap ; :

" Next Tab

" Insert Mode "
imap <leader>w :w!
imap jj <esc>

" split window management
nnoremap <leader>h :split<CR>
nnoremap <leader>j :vsplit<CR>
nnoremap <C-h> <C-w>r
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>no :noh<CR>

" language
imap <leader>php <?php ?><esc>hhi


" Plugin Remaps and settings
" folding code
nnoremap <space> za
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>

" Make emmet easier to invoke
imap <C-e> <C-y>,
" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Match Tag Always presets
let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'xhtml' : 1,
      \ 'xml' : 1,
      \ 'php.wordpress' : 1,
      \ }
