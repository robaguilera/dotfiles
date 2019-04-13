" ====================================
" Language Servers:
" ====================================

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" ====================================
" Emmett:
" ====================================
" Make emmet easier to invoke
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" ,, triggers autocomplete
let g:user_emmet_leader_key=','

" ====================================
" NeoTerm:
" ====================================
let g:neoterm_repl_ruby = 'pry'
let g:neoterm_autoscroll = 1

" React + Emmet <3
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
      \      'extends': 'jsx',
      \      'quote_char': "'",
      \  }
      \}

" ====================================
" Prettier:
" ====================================
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql Prettier augroup END

" number of spaces per indentation level
let g:prettier#config#tab_width = 2

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" none|es5|all
let g:prettier#config#trailing_comma = 'none'

" ====================================
" NERDTREE:
" ====================================
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ====================================
" ALE:
" ====================================
let b:ale_fixers = ['prettier', 'eslint']

" ====================================
" Deoplete:
" ====================================
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <TAB>
         \ pumvisible() ? "\<C-n>" :
         \ <SID>check_back_space() ? "\<TAB>" :
         \ deoplete#mappings#manual_complete()

function! s:check_back_space() abort
  let l:col = col('.') - 1
  return !l:col || getline('.')[l:col - 1]  =~? '\s'
endfunction

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.css               = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni#input_patterns.scss              = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni#input_patterns['javascript.jsx'] = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
