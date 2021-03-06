let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=50

" Pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

"Basic
let mapleader = ","
inoremap jk <ESC>
set mouse=
set number
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set foldlevel=99

colors molokai

if has("gui_running")
    set guifont=Source\ Code\ Pro\ Regular\ 10
endif

colors molokai

nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap 1 1gt
nmap 2 2gt
nmap 3 3gt
nmap 4 4gt
nmap 5 5gt
nmap 6 6gt
nmap 7 7gt
nmap 8 8gt
nmap 9 9gt
nmap 0 0gt
nmap <A-1> 1gt
nmap <A-2> 2gt
nmap <A-3> 3gt
nmap <A-4> 4gt
nmap <A-5> 5gt
nmap <A-6> 6gt
nmap <A-7> 7gt
nmap <A-8> 8gt
nmap <A-9> 9gt
nmap <A-0> 0gt

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"Go
au FileType go map <leader>r :!go run %<CR>
let g:go_fmt_command = "goimports"

"Python
let g:pymode_python = 'python3'
let g:pymode_options = 0
au FileType python map <F5> :!python %<CR>

"Format Json
noremap <leader>fj :%!python -m json.tool<cr>
vnoremap <leader>fj !python -m json.tool<cr>

"Quick config edit
noremap <leader>ev :vsplit $MYVIMRC<cr>

