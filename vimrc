set guifont=Consolas:h12:b:cEASTEUROPE 
set nocompatible
syntax on
set number
set incsearch
set hlsearch
set guioptions-=m
set guioptions-=T
set tabstop=2
set shiftwidth=4
set wildmenu
set path+=**
set relativenumber
set expandtab
set mouse=a
set hidden
set nofoldenable
set confirm
set scrolloff=5
set cursorline
set completeopt-=preview
command! Vimrc e ~\.vimrc

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/Auto-Pairs'
" Plug 'blueyed/vim-diminactive'
Plug 'digitaltoad/vim-pug'
" Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'zchee/deoplete-go'
" Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
" Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
" Plug 'bling/vim-bufferline'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
" Plug 'roman/golden-ratio'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'ryanoasis/vim-devicons'
" Plug 'felixhummel/setcolors.vim'
call plug#end()

colorscheme solarized
set background=dark

" let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:deoplete#enable_at_startup = 1
" let g:go_auto_sameids = 1
let g:tmux_navigator_no_mappings = 1
let g:ale_sign_column_always = 1
let g:solarized_termcolors=16
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" nnoremap <silent> <A-l> :TmuxNavigateLeft<cr>
" nnoremap <silent> <A-j> :TmuxNavigateDown<cr>
" nnoremap <silent> <A-k> :TmuxNavigateUp<cr>
" nnoremap <silent> <A-h> :TmuxNavigateRight<cr>
" nnoremap <silent> {A-j} :TmuxNavigatePrevious<cr>

" nmap <C-S-P> :call <SID>SynStack()<CR>
nmap <C-A> :NERDTreeToggle <CR>
nnoremap <A-J> <C-W><C-J>
nnoremap <A-K> <C-W><C-K>
nnoremap <A-L> <C-W><C-L>
nnoremap <A-H> <C-W><C-H>
nmap <F5> :so ~\.vimrc<CR> 

let g:go_fmt_command = "goimports"
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
