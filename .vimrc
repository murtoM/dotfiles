" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'ycm-core/YouCompleteMe'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jiangmiao/auto-pairs'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" powerline
set laststatus=2
set t_Co=256

" general
syntax on
set shell=bash
set number
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set modeline
set autoindent
set encoding=utf-8
set colorcolumn=80
highlight ColorColumn ctermbg=235
set cursorline
highlight CursorLine ctermbg=236 cterm=None

" ycm settings
let g:ycm_confirm_extra_conf = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_max_diagnostics_to_display = 1000

noremap <C-j> 4j
noremap <C-k> 4k
noremap <C-h> 4h
noremap <C-l> 4l

