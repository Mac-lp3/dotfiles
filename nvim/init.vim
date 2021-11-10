" line numbers
set number relativenumber

" whitespace characters
set list
set listchars=eol:⏎,tab:>-,trail:·,extends:>,precedes:<

" Shortcuts

" space = leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" ctrl+a
nnoremap <C-a> ggVG

" leader p to paste from yank registry
nnoremap <leader>p "0p

" black hole registry
nnoremap <Leader>d "_d
nnoremap <Leader>c "_c
nnoremap x "_x

" ctrl backspace/del to delete words
inoremap  <esc>"_cb
inoremap <C-Del> <esc>"_cw

" press enter after a search to clear highlights
nnoremap <CR> :noh<CR><CR>

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

runtime ./plug.vim

" theme
colorscheme nord
" colorscheme onenord

