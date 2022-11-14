" Enable LSP diagnostics by showing warnings and errors
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

" Customize the LSP symbols
let g:lsp_diagnostics_signs_error = {'text': '❌'}
hi LspErrorText ctermbg=red ctermfg=black

let g:lsp_diagnostics_signs_warning = {'text': '⚠️'}
hi LspWarningText ctermbg=yellow ctermfg=black

" Avoid breaking syntax when highlighting warnings and errors
hi! link LspWarningHighlight Normal
hi! link LspErrorHighlight Normal

" Customize the behavior of the LSP in every buffer
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)<CR>
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
