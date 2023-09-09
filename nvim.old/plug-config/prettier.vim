" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.html,*.hbs,*.less,*.scss,*.json,*.graphql Prettier augroup END


