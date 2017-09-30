" ========== VIM basic setup ==========
syntax on
filetype off                  " required
set number
set noswapfile
set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!
set softtabstop=2
set tabstop=2
set scrolloff=2                   " adds top/bottom buffer between cursor and window
set splitbelow                    " sets vim splits to default right and bottom
set splitright
set title                         " let vim set the terminal title
set expandtab                     " expands tabs to spaces
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set clipboard=unnamed
set nowrap                         " don't wrap lines
set ruler
set shiftwidth=2
set expandtab
set scrolloff=6
set wildmode=longest:list                    " better command line completion
set hlsearch

"
" better visual highlight
" " 12 is good for fg
highlight Visual ctermfg=4 ctermbg=7
highlight Visual guifg=#2E8CCF guibg=#EEE8D6
highlight Cursor guifg=black guibg=white"
hi Search cterm=inverse ctermfg=black


" ======= vim-go enabling features ========
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1


" ======= add auto pairs shortcut ======
let g:AutoPairsShortcutToggle = '<C-t>'

" ====== syntastic options set =====
let g:syntastic_go_checkers = ['go']
let g:syntastic_enable_signs=1

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


" close vim if NERDTree is the only open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let mapleader = ","
let maplocalleader = ";"
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:syntastic_enable_signs=1

" ========== vundle plugins ==========
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'epmatsw/ag.vim'
Plugin 'tpope/vim-unimpaired'

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
