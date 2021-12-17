call plug#begin()
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

:colorscheme atom-dark

" Ansible Settings
let g:ansible_extra_keywords_highlight = 1
let g:ansible_name_highlight = 'd'
let g:ansible_attribute_highlight = "ob"
let g:ansible_normal_keywords_highlight = 'Constant'
let g:ansible_loop_keywords_highlight = 'Constant'







Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
" Plug 'vim-scripts/taglist.vim'
Plug 'oblitum/rainbow'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'plasticboy/vim-markdown'
Plug 'pearofducks/ansible-vim'
call plug#end()

