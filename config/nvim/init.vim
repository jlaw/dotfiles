" Display start-up time.
let s:start_time = reltime()
augroup startup
  autocmd!
  autocmd VimEnter * echo reltimestr(reltime(s:start_time))
augroup end

" Use the current editor instead of nesting neovim.
let $VISUAL = 'nvr --remote-wait -l'
let $EDITOR = $VISUAL
