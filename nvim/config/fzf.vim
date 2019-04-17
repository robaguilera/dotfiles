" Digging Fzf so much it's got it's own space
command! -bang -nargs=* Find call fzf#vim#grep('rg --files --follow --hidden --glob "!.git/*,!node_modules/*,!bower_components/*, !tmp/* '.shellescape(<q-args>), 1, <bang>0)
" set fzf to theme
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Use fuzzy completion relative filepaths across directory
imap <expr> <c-x><c-f> fzf#vim#complete#path('git ls-files $(git rev-parse --show-toplevel)')

" Better command history with q:
command! CmdHist call fzf#vim#command_history({'right': '40'})
nnoremap q: :CmdHist<CR>

" Better search history
command! QHist call fzf#vim#search_history({'right': '40'})
nnoremap q/ :QHist<CR>

" Custom FZF commands ----------------------------- {{{
function! FZFOpen(command_str)
  if (expand('%') =~# 'NERD_tree' && winnr('$') > 1)
    exe "normal! \<c-w>\<c-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction

fun! s:change_branch(e)
  let l:_ = system('git checkout ' . a:e)
  :e!
  :AirlineRefresh
  echom 'Changed branch to' . a:e
endfun

command! Gbranch call fzf#run(
      \ {
      \ 'source': 'git branch',
      \ 'sink': function('<sid>change_branch'),
      \ 'options': '-m',
      \ 'down': '20%'
      \ })

fun! s:change_remote_branch(e)
  let l:_ = system('git checkout --track ' . a:e)
  :e!
  :AirlineRefresh
  echom 'Changed to remote branch' . a:e
endfun


command! Grbranch call fzf#run(
      \ {
      \ 'source': 'git branch -r',
      \ 'sink': function('<sid>change_remote_branch'),
      \ 'options': '-m',
      \ 'down': '20%'
      \ })
