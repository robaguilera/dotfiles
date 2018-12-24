" ==== Tweaks to Plugins ====
" Make emmet easier to invoke
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" React + Emmet <3
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
      \      'extends': 'jsx',
      \      'quote_char': "'",
      \  }
      \}

" ,, triggers autocomplete
let g:user_emmet_leader_key=','

" autocomplete paths easier
inoremap <c-f> <c-x><c-f>

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql Prettier augroup END

" number of spaces per indentation level
let g:prettier#config#tab_width = 2

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" none|es5|all
let g:prettier#config#trailing_comma = 'none'

" NERDTREE
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Smooth Scroll
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

" Indent Line
let g:indentLine_enabled = 1

" HANDLEBARS STUFF
let g:mustache_abbreviations = 1

" ALE
let b:ale_fixers = ['prettier', 'eslint']

" Deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1
" let g:deoplete#num_processes = 1

" Disable the candidates in Comment/String syntaxes.
" call deoplete#custom#source('_',
"             \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
