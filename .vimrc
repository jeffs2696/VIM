" Jeff's .vimrc configuration
" 
" Turn syntax highlighting on
:syntax off
:set backspace=indent,eol,start
:set hidden 

" setting some convinent environment variables
let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/.vimrc"
let mapleader = " "

" No error bell at the end of line
:set noerrorbells

" set line numbers
:set number
:set relativenumber
" don't wrap text
:set nowrap

" case sensitive searching until I give a capital letter
:set smartcase


" makes tab into spaces
:set tabstop=4
:set shiftwidth=4
:set expandtab

" auto indenting
:set smartindent

:set noswapfile
:set nobackup
:set undodir=~/.vim/undodir
:set undofile

" toggle blankspaces for chararcters
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>


 " enhance searches by going to search word 
:set incsearch
" workaround to fix unwanted highlighting when scrolling for wsl
:set t_ut=
"keep folds in file (check ~/.vim/view for saved folds) 
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
" resize windows shortcuts
:nnoremap + :vertical resize +5<CR>
:nnoremap _ :vertical resize -5<CR>
:nnoremap = :resize +5<CR>
:nnoremap - :resize -5<CR>

:imap ;; <Esc>
:nnoremap <Leader><Leader>t :botright vertical terminal<CR>
":colorscheme desert
" Center the screen everytime we go into insert mode
" Switch splits easily 
:nnoremap <c-j> <c-w>j
:nnoremap <c-k> <c-w>k
:nnoremap <c-h> <c-w>h
:nnoremap <c-l> <c-w>l
"Center screen after we go into insert mode
:set scrolloff=999

:setlocal colorcolumn=80
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
"Plug 'rudrab/vimf90'
"Plug 'https://github.com/fpnick/flowhighlight'
call plug#end()

:let fortran_fold=1
:let fortran_fold_conditionals=1
:let fortran_fold_multilinecomments=1
":let fortran_free_source=      1
:colorscheme gruvbox
:set background=dark
" NERDTree configuration
map <C-o> :NERDTreeToggle<CR>
