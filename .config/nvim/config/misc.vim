"Syntax"
" let g:SuperTabDefaultCompleteType = "context"
" function! PhpSyntaxOverride()
"   hi! def link phpDocTags  phpDefine
"   hi! def link phpDocParam phpType
" endfunction
"
" augroup phpSyntaxOverride
"   autocmd!
"   autocmd FileType php call PhpSyntaxOverride()
" augroup END

" Trial
" ===== DEOPLETE ============
let g:deoplete#enable_at_startup = 1

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" ===== TERN =============
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" ===== Allow Airline to display status =============

set noshowmode

" ===== CTRLp Ignore Folder =============
let g:ctrlp_custom_ignore = 'dist\|node_modules\|DS_Store\|git\|vendor'

