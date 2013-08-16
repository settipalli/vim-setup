set nocompatible               " be iMproved
let mapleader = ","
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'hallison/vim-markdown'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-repeat'
Bundle 'edsono/vim-matchit'
Bundle 'klen/python-mode'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'myhere/vim-nodejs-complete'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'fugalh/desert.vim'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed.

" User - source: http://items.sjbach.com/319/configuring-vim-right
set nonumber

" Use spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Search - case insensitive search if no upper case letter is used. * based
" searches are always case-sensitive.
set ignorecase
set smartcase

" Highlight search terms and search as you type.
set hlsearch
set incsearch

" If the search term highlighting gets annoying, set a key to switch it off temporarily
nmap <silent> <leader>n :silent :nohlsearch<CR>

" Keep longer history
set history=10000

" Make file/command completion useful.
set wildmenu

" Completion to behave like shell - complete only upto the point of ambiguity.
set wildmode=list:longest

" Store temporary files in a central location.
set backupdir=~/.vim/.tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/.tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Scroll viewport faster - default for <C-e> = one line down, <C-y> = one line
" up
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

set ruler

" Maintain more context.
set scrolloff=3


" User helper functions

" Source: http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
function! NumberToggle()
    if (&relativenumber == 1)
        set number
    elseif (&number == 1)
        set nonumber
    else
        set relativenumber
    endif
endfunc

" Display or hide numbers
nnoremap <C-n> :call NumberToggle()<cr>

" Source: http://bencrowder.net/files/vim-fu/
" Source: https://github.com/bencrowder/dotfiles/blob/master/vimrc

" Sets paste toggle to the F2 key, so you can paste text without the
" indentation going berserk.
set pastetoggle=<F2>

" Encoding
set encoding=utf-8

" Source: https://github.com/chadgh/configs-utils/blob/master/dotfiles/vimrc
" Indenting
set autoindent
set smartindent

set showcmd

