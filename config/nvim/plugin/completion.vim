nnoremap <leader><tab> :call mucomplete#toggle_auto()<cr>

imap <expr> <up> pumvisible() ? "\<plug>(MUcompleteExtendBwd)" : "\<up>"
imap <expr> <down> pumvisible() ? "\<plug>(MUcompleteExtendFwd)" : "\<down>"

let g:mucomplete#chains = {}
let g:mucomplete#chains.default = ['path', 'omni', 'keyn', 'dict', 'uspl']
let g:mucomplete#chains.markdown = ['keyn', 'dict', 'uspl']
let g:mucomplete#chains.vim = ['path', 'cmd', 'keyn']

"
" Tags
"

" Locate a working ctags implementation.
if executable('uctags')
  let g:gutentags_ctags_executable = 'uctags'
elseif executable('exctags')
  let g:gutentags_ctags_executable = 'exctags'
endif
