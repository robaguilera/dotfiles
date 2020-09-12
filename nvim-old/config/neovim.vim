if has('nvim')
  " ----------------------------------------------------------------------------
  " Other Modes 
  " ----------------------------------------------------------------------------
  set inccommand=split
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
        \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
        \,sm:block-blinkwait175-blinkoff150-blinkon175

  let g:LanguageClient_serverCommands = {
    \ 'javascript.jsx': ['javascript-typescript-stdio']
    \ }

  let g:LanguageClient_hasSnippetSupport = 0
  let s:float_term_border_win = 0
  let s:float_term_win = 0

  nnoremap <leader>; :call LanguageClient_contextMenu()<CR>

endif
