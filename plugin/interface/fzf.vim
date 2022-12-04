" Declare the mappings for fzf
nmap <leader>fhf :Files<CR>
nmap <leader>ff :GFiles<CR>
nmap <leader>fc :Commits<CR>

" Enable the preview window in the fzf browser
let g:fzf_preview_window = ['right,50%', 'ctrl-/']

" Customize the colors for the fzf floating window
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'LineNr'],
  \ 'hl+':     ['fg', 'LineNr'],
  \ 'info':    ['fg', 'Normal'],
  \ 'border':  ['fg', 'FloatermBorder'],
  \ 'prompt':  ['fg', 'ModeMsg'],
  \ 'pointer': ['fg', 'LineNr'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'gutter':  ['fg', 'Ignore'],
  \ 'header':  ['fg', 'Comment'] }
