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
" git repos on your local machine (i.e. when working on your own Plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/deoplete.nvim'
Plugin 'zchee/deoplete-go', { 'do': 'make'}

Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'moll/vim-node'
Plugin 'majutsushi/tagbar'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'solarnz/thrift.vim'
Plugin 'w0rp/ale'

call vundle#end()            " required
filetype plugin indent on    " required


" Setting for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Following is my customized commands"
set hlsearch
set ignorecase
set nu
syn on
set tabstop=4
set expandtab
set ruler
set autoindent
set nowrap
set shiftwidth=4
set smarttab
color torte
command NT NERDTree
command NTF NERDTreeFind
command GD GoDef
command GI GoImplements
command C CommandT
command SC SyntasticCheck
command SR SyntasticReset
command TT TagbarToggle
command TC TagbarClose

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Syntastic check disabled by default
let g:syntastic_mode_map = { 'mode': 'passive' }
" nnoremap <C-w>E :SyntasticCheck<CR>

let &runtimepath.=',~/.vim/bundle/ale'
let g:go_fmt_command = "goimports"
let g:go_highlight_operators=1
let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_structs=1
let g:go_highlight_types=1
let g:go_highlight_extra_type=1
let g:go_highlight_build_constraints=1
let g:go_highlight_generate_tags=1
let g:go_def_mode = 'godef'
let g:go_decls_includes = "func"

" deoplete
let g:deoplete#enable_at_startup = 1

" Disable syntastic checker for go - unless we figure out a 
" way to make checker smart enough to detect gopath.
let g:syntastic_go_checkers= ["golint"]
" gjslint is taken out.
let g:syntastic_javascript_checkers= []
let g:syntastic_python_checkers= []

" Tagbar configuration
let g:tagbar_width = 100

" NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Customized extension syntax highlight. "
au BufRead,BufNewFile *.coffee set filetype=python
au BufRead,BufNewFile *.eco set filetype=html

" Set Mapping leader key"
let mapleader = "_"

" Copy and paste from system clipboard
set clipboard+=unnamed
