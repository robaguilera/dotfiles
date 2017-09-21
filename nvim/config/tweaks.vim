" ==== Tweaks to Plugins ====
" Make emmet easier to invoke
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" React + Emmet <3
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
      \      'extends': 'jsx',
      \      'quote_char': "'",
      \  },
      \}

" ,, triggers autocomplete
let g:user_emmet_leader_key=','

" autocomplete paths easier
inoremap <c-f> <c-x><c-f>

" Match Tag Always presets
let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'xhtml' : 1,
      \ 'xml' : 1,
      \ 'php.wordpress' : 1,
      \ }

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql Prettier augroup END

" number of spaces per indentation level
let g:prettier#config#tab_width = 4

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" none|es5|all
let g:prettier#config#trailing_comma = 'none'

" I love my girls pretty
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Smooth Scroll
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

" Indent Line
let g:indentLine_enabled = 1

" Deoplete
let g:deoplete#enable_at_startup = 1
autocmd CompleteDone * pclose
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>" 
let g:deoplete#enable_ignore_case = 0
let g:deoplete#enable_smart_case = 0
let g:deoplete#delimiters = ['/', '.', '::', ':', '#']
let g:deoplete#auto_complete_delay = 0
let g:deoplete#auto_refresh_delay = 0
let g:neocomplete#min_pattern_length = 2

" Tern JS
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'js',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]