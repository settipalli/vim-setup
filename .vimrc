set nocompatible               " be iMproved
let mapleader = ","
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle - required! 
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
Bundle 'bling/vim-airline'
Bundle 'fugalh/desert.vim'
Bundle 'sjl/gundo.vim'
Bundle 'majutsushi/tagbar'
Bundle 'zhaocai/GoldenView.Vim'
Bundle 'godlygeek/tabular'
Bundle 'nelstrom/vim-markdown-folding'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!
syntax on

" ==============================================================================
"
" Brief help
" 
" | Command              | Effect                                             |
" | -------------------- | -------------------------------------------------- |
" | :BundleList          | list configured bundles                            |
" | :BundleInstall(!)    | install(update) bundles                            |
" | :BundleSearch(!) foo | search(or refresh cache first) for foo             |
" | :BundleClean(!)      | confirm(or auto-approve) removal of unused bundles |
" | -------------------- | -------------------------------------------------- |
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed.
"
" ==============================================================================

" Key mappings for Plugins
nnoremap <F5> :GundoToggle<CR>
nmap <F10> :TagbarToggle<CR>

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
nmap <silent> <leader><space> :silent :nohlsearch<CR>

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

" Catch trailing whitespace characters
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>


" ==============================================================================
" Source: http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
" ==============================================================================

set relativenumber

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
nnoremap <Leader>n :call NumberToggle()<cr>


" ==============================================================================
" Source: http://bencrowder.net/files/vim-fu/
" Source: https://github.com/bencrowder/dotfiles/blob/master/vimrc
" ==============================================================================

" Sets paste toggle to the F2 key, so you can paste text without the
" indentation going berserk.
set pastetoggle=<F2>

" Encoding
set encoding=utf-8


" ==============================================================================
" Source: https://github.com/chadgh/configs-utils/blob/master/dotfiles/vimrc
" ==============================================================================

" Indenting
set autoindent
set smartindent

" Appearance - more colors
set t_Co=256

" Status bar (everything else handled by powerline plugin)
set laststatus=2 "Always show a status line

set showcmd

" Automatically change dir to the dir that the currently working file is.
if exists("+autochdir")
    set autochdir
else
    autocmd BufEnter * lcd %:p:h
endif

" Turn on nice line breaking
set lbr

" Use ellipsis to indicate a line break
set showbreak=…

" Makes backspace work as expected for tabs and such.
set backspace=start,indent,eol


" ==============================================================================
" Source: http://amix.dk/vim/vimrc.html
" ==============================================================================

" Enable auto-read when the contents of the file are modified externally.
set autoread

" Fast saving a file
nmap <Leader>w :w!<CR>

" Fast close without save.
nmap <Leader>q :q!<CR>

" Fast close with save.
nmap <Leader>x :x!<CR>

" Move lines.
nnoremap <C-S-J> :m+1<CR>
nnoremap <C-S-K> :m-2<CR>

" Ignore compiled files.
set wildignore=*.o,*~,*.pyc,*.pyo,*.class


" ==============================================================================
" Source: http://majorursa.net/blog/2013/05/06/vim-and-nerdtree-awesome-ness/
" ==============================================================================

nnoremap <F3> :execute 'NERDTreeToggle ' . getcwd()<CR>


" ==============================================================================
" Source: http://vimcasts.org/episodes/how-to-fold/
" ==============================================================================
 
nnoremap <Space> za

" ==============================================================================
" Buffer manipulation made easy.
" ==============================================================================

set hidden

" Buffer manipulation commands:
" 
" | Command | Effect                                                                                         |
" | ------- | ---------------------------------------------------------------------------------------------- |                                                                                         |
" | :ls     | show the buffer list
" | :bn     | open the next buffer in the current window (cycles from the end of the list to the beginning). |
" | :bp     | open the previous buffer in the current window (cycles from the start of the list to the end). |
" | CTRL-^  | switch to the alternate file                                                                   |
" | ------- | ---------------------------------------------------------------------------------------------- |                                                                                         |
"

" make hjkl movements accessible from insert mode via the <Alt> modifier key
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

" Movement restrictions.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" ==============================================================================
" Source: http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
" ==============================================================================

" This does what it says on the tin. It will check your file on open too, not
" just on save. You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1

" Abbreviate messages
set shortmess=atI

" YouCompleteMe
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<CR>']
 
