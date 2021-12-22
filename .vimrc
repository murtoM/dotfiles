" vundle
set nocompatible
filetype on
filetype indent on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'ycm-core/YouCompleteMe'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/java_getset.vim'
Plugin 'sbdchd/neoformat'
Plugin 'prettier/vim-prettier'
Plugin 'vim-scripts/xmledit'
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

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
"set modeline
set hlsearch
set autoindent
set encoding=utf-8
set colorcolumn=80,100
highlight ColorColumn ctermbg=235
set cursorline
highlight CursorLine ctermbg=236 cterm=None

" ycm settings
let g:ycm_confirm_extra_conf = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_max_diagnostics_to_display = 1000

" java_getset
let b:javagetset_getterTemplate =
          \ "\n" .
          \ "%modifiers% %type% %funcname%() {\n" .
          \ "  return %varname%;\n" .
          \ "}"
let b:javagetset_setterTemplate =
          \ "\n" .
          \ "%modifiers% void %funcname%(%type% %varname%) {\n" .
          \ "  this.%varname% = %varname%;\n" .
          \ "}"

" two char indentation for java and js
autocmd FileType java setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" faster motion with Ctrl+hjkl
noremap <C-j> 4j
noremap <C-k> 4k
noremap <C-h> 4h
noremap <C-l> 4l

" toggle relativenumber
nmap <F2> :set rnu!<CR>
" toggle line numbers
nmap <F3> :set nu!<CR>

