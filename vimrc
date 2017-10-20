" ========== VIM basic setup ==========
filetype off                  " required
filetype plugin indent on
set background=dark
set rtp+=/usr/local/go/misc/vim
syntax enable 
syntax on


" ========== vundle ==========
" source ~/.vim/vundle/plugins.vim

set autoindent                    " take indent for new line from previous line
set autowrite
set backspace=indent,eol,start
set clipboard=unnamed
set copyindent
set expandtab
set expandtab                     " expands tabs to spaces
set hidden
set hlsearch
set ignorecase
set incsearch
set infercase
set noerrorbells                  " No bells!
set noswapfile
set novisualbell                  " I said, no bells!
set nowrap                         " don't wrap lines
set number
set ruler
set scrolloff=2                   " adds top/bottom buffer between cursor and window
set scrolloff=6
set shiftwidth=2
set showcmd
set showmatch
set showmode
set smartcase
set smartindent                   " enable smart indentation
set softtabstop=2
set splitbelow                    " sets vim splits to default right and bottom
set splitright
set tabstop=2
set title                         " let vim set the terminal title
set undolevels=1000      " use many muchos levels of undo

set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:full          " show a list when pressing tab and complete
                                "    first full match
set wildignore=*.swp,*.bak,*.pyc,*.class

set mouse=a                     " enable using the mouse if terminal emulator
                                "    supports it (xterm does)

set pastetoggle=<F2>            " when in insert mode, press <F2> to go to
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
"
" better visual highlight
" " 12 is good for fg
" change highlight text colors
highlight Visual ctermfg=15 ctermbg=8
highlight Search ctermfg=16
" highlight Visual ctermfg=4 ctermbg=7
" highlight Visual guifg=#2E8CCF guibg=#EEE8D6
" highlight Cursor guifg=black guibg=white"
" hi Search cterm=inverse ctermfg=black


" ======= vim-go enabling features ========
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" ======= add auto pairs shortcut ======
let g:AutoPairsShortcutToggle = '<C-t>'

" ====== syntastic options set =====
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_go_checkers = ['go', 'gofmt']

" ====== ignore certain folders with ctrl+p =====
if exists('g:ctrlp_user_command')
  unlet g:ctrlp_user_command
endif
let g:ctrlp_custom_ignore = 'Godeps|vendor'

" ======= Remapping commands to short cut keys ========
" Toggle nerd tree file tree
map \           :NERDTreeToggle<CR>
map \|          :NERDTreeFind<CR>

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""
inoremap jj <ESC>
map <leader>w   ^Ww
map <leader>l   ^Wl
map <leader>j   ^Wj
map <leader>k   ^Wk
nmap <C-j>      <C-w>j
nmap <C-k>      <C-w>k
nmap <C-h>      <C-w>h
nmap <C-l>      <C-w>l

" in visual mode,"." will for each line, go into normal mode and execute the"."
vnoremap . :norm.<CR>a

"  spacebar sends no highlight
nnoremap <Space> :noh<CR>
" Speed up scrolling of the viewport slightly
 nnoremap <C-e> 2<C-e>
 nnoremap <C-y> 2<C-y>

" ======= move lines up and down =======
" uses ctrl-j and ctrl-k
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" close vim if NERDTree is the only open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let mapleader = ","
let maplocalleader = ";"
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:syntastic_enable_signs=1
let NERDTreeIgnore=['.DS_Store']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ========== vundle plugins ==========
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'epmatsw/ag.vim'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
"------ these are needed for snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tlib_vim'
Plugin 'trayo/vim-ginkgo-snippets'
Plugin 'trayo/vim-gomega-snippets'
"------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colorscheme solarized
