" ========== VIM basic setup ==========
filetype off                  " required
filetype plugin indent on
set background=dark
set rtp+=/usr/local/go/misc/vim
syntax enable 
syntax on


" ========== vundle ==========
source ~/.vim/vundle/plugins.vim

colorscheme solarized

set autoindent                    " take indent for new line from previous line
set autowrite
set backspace=indent,eol,start
set clipboard=unnamed
set copyindent
set nocompatible                  " choose no compatibility with legacy vi
set expandtab
set expandtab                     " expands tabs to spaces
set hidden
set hlsearch
set ignorecase
set incsearch
set infercase
set noerrorbells                  " No bells!
set noswapfile
set hls                         " search with highlights by default
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
set t_Co=256                                 " Explicitly tell vim that the terminal supports 256 colors
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

" better visual highlight
" change highlight text colors
highlight Visual ctermfg=4 ctermbg=7
highlight Visual guifg=#2E8CCF guibg=#EEE8D6
highlight Cursor guifg=black guibg=white

" makes highlight searching very visible
hi Search cterm=inverse ctermfg=white


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

" clear highlight with space bar
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

"navigating panes with C-<h,j,k,l>
map <leader>w   ^Ww
map <leader>l   ^Wl
map <leader>j   ^Wj
map <leader>k   ^Wk
nmap <C-j>      <C-w>j
nmap <C-k>      <C-w>k
nmap <C-h>      <C-w>h
nmap <C-l>      <C-w>l

" resize panes
" nmap <C-[>      <C-w><
" nmap <C-]>      <C-w>>

" in visual mode,"." will for each line, go into normal mode and execute the"."
vnoremap . :norm.<CR>a

"  spacebar sends no highlight
nnoremap <Space> :noh<CR>
" Speed up scrolling of the viewport slightly
 nnoremap <C-e> 3<C-e>
 nnoremap <C-y> 3<C-y>

" close vim if NERDTree is the only open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let mapleader = ","
let maplocalleader = ";"
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:syntastic_enable_signs=1
let NERDTreeIgnore=['DS_Store']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
