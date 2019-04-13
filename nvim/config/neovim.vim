if has('nvim')
  " ----------------------------------------------------------------------------
  " Terminal Mode "
  " ----------------------------------------------------------------------------
  tnoremap <c-h> <C-\><C-N><C-w>h
  tnoremap <c-j> <C-\><C-N><C-w>j
  tnoremap <c-l> <C-\><C-N><C-w>l
  tnoremap <c-k> <C-\><C-N><C-w>k
  inoremap <c-h> <C-\><C-N><C-w>h
  inoremap <c-j> <C-\><C-N><C-w>j
  inoremap <c-l> <C-\><C-N><C-w>l
  inoremap <c-k> <C-\><C-N><C-w>k
  nnoremap <c-h> <C-\><C-N><C-w>h
  nnoremap <c-j> <C-\><C-N><C-w>j
  nnoremap <c-l> <C-\><C-N><C-w>l
  nnoremap <c-k> <C-\><C-N><C-w>k

  " easily escape terminal
  tnoremap <leader><esc> <C-\><C-n><esc><cr>
  tnoremap <C-o> <C-\><C-n><esc><cr>

  " quickly toggle term
  nnoremap <silent> <leader><leader>v :vertical botright Ttoggle<cr><C-w>l
  nnoremap <silent> <leader><leader>h :horizontal rightbelow Ttoggle<cr><C-w>j

  " ----------------------------------------------------------------------------
  " Manipulation
  " ----------------------------------------------------------------------------
  nnoremap <leader>k :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
  vnoremap <leader>k y :%s/<C-r>" //gc<Left><Left><Left>

  " ----------------------------------------------------------------------------
  " Other Modes 
  " ----------------------------------------------------------------------------
  set inccommand=nosplit
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
        \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
        \,sm:block-blinkwait175-blinkoff150-blinkon175

  let g:LanguageClient_serverCommands = {
    \ 'javascript.jsx': ['javascript-typescript-stdio']
    \ }

  let g:LanguageClient_hasSnippetSupport = 0

  nnoremap <leader>; :call LanguageClient_contextMenu()<CR>

endif
