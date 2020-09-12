" Emmett autocompletion
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")  " Make emmet easier to invoke
let g:user_emmet_leader_key='<c-space>' " ,, triggers autocomplete

" React + Emmet <3
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
      \      'extends': 'jsx',
      \      'quote_char': "'",
      \  },
      \}
