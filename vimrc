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
Plugin 'roman/golden-ratio'

call vundle#end()            " required
filetype plugin indent on    " required

nmap <C-S-P> :call <SID>SynStack()<CR>
nmap <C-tab> :NerdtreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <F5> :so ~\.vimrc<CR> 


function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
