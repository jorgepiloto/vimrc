" =========================
" Jorge's Vim configuration
" =========================
" 
" This file serves as the entrypoint for the Vim configuration. Everytime a new
" instance of the editor gets created, this file is read together with the rest
" the directories and file in this repository.
"
" Please, refer to the `README.md` file for more information about the purpose
" of each directory and file.

" -----------------------------------------------------------------------------
" Basic XDG directory specification configuration
" -----------------------------------------------------------------------------
set packpath+=~/.config/vim,~/.config/vim/after
set runtimepath+=~/.config/vim,~/.config/vim/after,~/.config/vim/pack
set viminfo+=n~/.config/vim/viminfo


" -----------------------------------------------------------------------------
" General configuration
" -----------------------------------------------------------------------------

" Provide support for UTF-8
set encoding=utf-8
scriptencoding utf-8

" Provides tab completion for all file-related
set path+=**	

" Show line numbers
set number
set relativenumber

" Improve backspace experience in INSERT mode
set backspace=indent,eol,start

" Ensure a fast refresh time
set updatetime=100

" Declare the leader key
let mapleader=","

set colorcolumn=80
syntax on
colorscheme volk


" -----------------------------------------------------------------------------
" User interface configuration
" -----------------------------------------------------------------------------

" Customize Vim in-built status line to make it more informative
set laststatus=2
set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)

" Display a simple menu when suggesting completions
set wildmenu


" -----------------------------------------------------------------------------
" File configuration
" -----------------------------------------------------------------------------

" Enable filetype detection. Load the ftplugin/ custom configuration and apply
" the right indentation according to the type of file
filetype plugin indent on

" Do not create backup files
set nobackup
set nowritebackup
set noswapfile


" Keep indentation of previous line while editing the file
set autoindent

" -----------------------------------------------------------------------------
" Mappings
" -----------------------------------------------------------------------------

" Move across buffers using PageUp and PageDown shortcuts
nmap <c-PageUp> <Esc>:w<CR>:bp<CR>
nmap <c-PageDown> <Esc>:w<CR>:bn<CR>
nmap <c-W> <Esc>:w<CR>:bd<CR>

" Use the Tab key for moving across completion pop-up menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <s-Tab> pumvisible() ? "\<C-p>" : "\<s-Tab>"
