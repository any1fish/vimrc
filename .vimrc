"Vundle"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
" Avoid a name conflict with L9

call vundle#end()            " required
filetype plugin on    " required
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'moll/vim-node'
Plugin 'Valloric/YouCompleteMe'

"Following is my customized commands"
set hlsearch
set ignorecase
set nu
syn on
filetype plugin on
set tabstop=4
set expandtab
set ruler
set noro
set nowrap
color torte
command NT NERDTree
command NTF NERDTreeFind
command GD GoDef
command C CommandT

" Setting for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Disable syntastic checker for go - unless we figure out a 
" way to make checker smart enough to detect gopath.
let g:syntastic_go_checkers= ["golint"]
" gjslint is taken out.
let g:syntastic_javascript_checkers= []
let g:syntastic_python_checkers= []

" Customized extension syntax highlight. "
au BufRead,BufNewFile *.coffee set filetype=python
au BufRead,BufNewFile *.eco set filetype=html

" Set Mapping leader key"
let mapleader = "_"
