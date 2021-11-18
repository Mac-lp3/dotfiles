" line numbers
set number relativenumber

" ignore case when searching
set ignorecase

" whitespace characters
set list
set listchars=eol:⏎,tab:>-,trail:·,extends:>,precedes:<,space:·

" When the page starts to scroll
set scrolloff=4

" filetype/indent settings
filetype plugin indent on
set autoindent
set smartindent
set nowrap
set expandtab " default to spaces not tabs
set shiftwidth=4 " use 4 spaces for a tab
set tabstop=4

" always tabs for makefiles
autocmd FileType make setlocal shiftwidth=8 tabstop=8 noexpandtab

" Mappings

" space = leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" ctrl+a
nnoremap <C-a> ggVG

" leader p to paste from yank registry
nnoremap <leader>p "0p

" ctrl+c to copy to system clipboard
nnoremap <C-c> "*y

" black hole registry
nnoremap <Leader>d "_d
nnoremap <Leader>c "_c
nnoremap x "_x

" ctrl backspace/del to delete words
inoremap  <esc>l"_cb
inoremap <C-Del> <esc>"_cw

" press enter after a search to clear highlights
nnoremap <CR> :noh<CR><CR>

" alt+[/] for prev/next buffer
nnoremap <M-[> :bp<cr>
nnoremap <M-]> :bn<cr>

" windows & movement
" alt-direction to change window
nmap <nowait> <A-h> <C-W>h
nmap <nowait> <A-j> <C-W>j
nmap <nowait> <A-k> <C-W>k
nmap <nowait> <A-l> <C-W>l

" open & close window commands
nmap <A-T> <esc>:vsp<cr>
nmap <A-W> <esc>:q<cr>

" resizing
nmap <A-H> <esc>:vertical resize -1<cr>
nmap <A-L> <esc>:vertical resize +1<cr>
nmap <A-K> <esc>:resize +1<cr>
nmap <A-J> <esc>:resize -1<cr>

" Plugin settings
let g:coq_settings = { 'auto_start': 'shut-up', 'xdg': v:true, 'keymap.jump_to_mark' : '' }

runtime ./plug.vim

" theme options:
" nord
" onenord
colorscheme nord

