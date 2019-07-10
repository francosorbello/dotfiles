" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'crusoexia/vim-monokai'
call plug#end()

set number
set title
set termguicolors
nnoremap <C-s> :w<CR>
set clipboard=unnamedplus
syntax on
colorscheme monokai
" binds para cambiar hjkl a jklñ

nnoremap j h
nnoremap k j
nnoremap l k 
nnoremap ñ l
nnoremap J H 
nnoremap K J 
nnoremap L K 
nnoremap Ñ L
nnoremap gk gj 
nnoremap gl gk
vnoremap j h 
vnoremap k j 
vnoremap l k 
vnoremap ñ l