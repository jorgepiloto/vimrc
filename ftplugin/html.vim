" Specify the desired indentation space
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Execute the current file using <F5> and the test suite using <F6>
nmap <F5> <Esc>:w<CR>:!clear && firefox %<CR>
