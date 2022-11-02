" The following configuration applies in the buffer where a Python file has
" been loaded.

" -----------------------------------------------------------------------------
" Mappings
" -----------------------------------------------------------------------------

" Execute the current file using <F5> and the test suite using <F6>
nmap <F5> <Esc>:w<CR>:!clear && python %<CR>
nmap <F6> <Esc>:w<CR>:!clear && pytest %<CR> 
