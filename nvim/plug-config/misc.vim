" better whitespace:
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1
let g:strip_whitespace_confirm=0

" Goyo
nmap <F6> :Goyo<CR>

" Language Servers
let g:LanguageClient_autoStart=1 " Automatically start language servers

" Rainbow Parens
let g:rainbow_active=1

" Ale
let g:ale_disable_lsp = 1

" Closetags
let g:closetag_filenames = '*.html,*.xhtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_filetypes = 'html,javascript'

" Window Swap
let g:windowswap_map_keys = 0 "prevent default bindings

" Vim Rooter
let g:rooter_silent_chdir = 1
