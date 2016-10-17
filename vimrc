" colorscheme japanesque
" colorscheme ToPinkForYa
set guifont=Consolas:h12:b:cEASTEUROPE 
set nocompatible
syntax on
set number
set incsearch
set hlsearch
set guioptions-=m
set guioptions-=T
set tabstop=2
set wildmenu
set path+=**
set relativenumber
command! Vimrc e ~\.vimrc

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-bufferline'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'roman/golden-ratio'
Plugin 'felixhummel/setcolors.vim'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme Tomorrow-Night

" nmap <C-S-P> :call <SID>SynStack()<CR>
nmap <C-P> :bprev <CR>
nmap <C-N> :bnext <CR>
nmap <C-tab> :NerdtreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <F5> :so ~\.vimrc<CR> 

set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
