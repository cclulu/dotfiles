" ========== VIM basic setup ==========
filetype off                  " required
filetype plugin indent on
set background=dark
" set rtp+=/usr/local/go/misc/vim
syntax enable 
syntax on

" ========== mapping leaders ==========
let mapleader = ","
let maplocalleader = ";"

" ========== vundle ==========
source ~/.vim/vundle/plugins.vim

colorscheme solarized

" ========== autocmd ==========
" turn off visual bell
autocmd GUIEnter * set vb t_vb= " for your GUI
autocmd VimEnter * set vb t_vb=

" ========== set ==========
set autoindent                  " take indent for new line from previous line
set backspace=indent,eol,start
set clipboard=unnamed
set completeopt-=preview        " disable vim preview window
set copyindent
set expandtab                   " expands tabs to spaces
set hidden
set hls                         " search with highlights by default
set hlsearch
set ignorecase
set incsearch
set infercase
set laststatus=2                " Always show statusline
set nocompatible                " choose no compatibility with legacy vi
set noerrorbells                " No bells!
set noswapfile
set novisualbell                " I said, no bells!
set nowrap                      " don't wrap lines
set number
set ruler
set scrolloff=5                 " adds top/bottom buffer between cursor and window
set shiftwidth=2
set showcmd
set showmatch
set showmode
set smartcase
set smartindent                 " enable smart indentation
set softtabstop=2
set splitbelow                  " sets vim splits to default right and bottom
set splitright
set tabstop=2
set title                       " let vim set the terminal title

set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:full          " show a list when pressing tab and complete
                                "    first full match
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildignore+=*tmp/*,*coverage/*,*bower_components/*,*node_modules/*,*.rvm*

set mouse=a                     " enable using the mouse if terminal emulator
                                "    supports it (xterm does)

set undofile
set undodir=~/.vim/undodir


" ======= :commands WQ ========
:command WQ wq
:command Wq wq
:command W w
:command Q q

" ======= highlighting ========
" better visual highlight
" change highlight text colors
highlight Visual ctermfg=4 ctermbg=7
highlight Visual guifg=#2E8CCF guibg=#EEE8D6
highlight Cursor guifg=black guibg=white

" makes highlight searching very visible
hi Search cterm=inverse ctermfg=white

" ======= vim-go enabling features ========
let g:go_auto_type_info = 1
let g:go_fmt_command = "gofmt"
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declerations = 1
let $GINKGO_EDITOR_INTEGRATION = "true"

" ====== syntastic options set =====
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_go_checkers = ['go', 'gofmt']

" ====== airline =====
let g:airline_powerline_fonts = 1


" ====== vim-signify =====
let g:signify_vcs_list = [ 'git' ]

" ====== ignore certain folders with ctrl+p =====
if exists('g:ctrlp_user_command')
  unlet g:ctrlp_user_command
endif
let g:ctrlp_custom_ignore = 'Godeps|vendor'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"======= Remapping commands to short cut keys ========

"         ======= NERDTREE ========
" Toggle nerd tree file tree
map \           :NERDTreeToggle<CR>
map \|          :NERDTreeFind<CR>

" close vim if NERDTree is the only open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeIgnore=['DS_Store']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"         ======= Navigations ========
"navigating panes with C-<h,j,k,l>
map <leader>w   ^Ww
map <leader>l   ^Wl
map <leader>j   ^Wj
map <leader>k   ^Wk
nmap <C-j>      <C-w>j
nmap <C-k>      <C-w>k
nmap <C-h>      <C-w>h
nmap <C-l>      <C-w>l

" ======= always rainbow parens ========
let g:rainbow_active = 1

let g:rainbow_conf = {
\ 'guifgs':['royalblue3','darkorange3', 'seagreen3', 'firebrick'],
\ 'ctermfgs': ['blue', 'red', 'cyan', 'magenta', 'yellow', 'white'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}

" ======= Misc. ========

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" in visual mode,"." will for each line, go into normal mode and execute the"."
vnoremap . :norm.<CR>a

" clear highlight with space bar
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

