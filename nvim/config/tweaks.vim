" Language Servers

let g:LanguageClient_autoStart = 1 " Automatically start language servers

" Emmett

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")  " Make emmet easier to invoke
let g:user_emmet_leader_key=',' " ,, triggers autocomplete
" React + Emmet <3
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
      \      'extends': 'jsx',
      \      'quote_char': "'",
      \  }
      \}

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql Prettier augroup END

" NERDTREE
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Deoplete
"
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

" Git Gutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

let g:gitgutter_override_sign_column_highlight = 1
set updatetime=250
