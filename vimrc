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
"set relativenumber                " show relative numbers in the ruler
set nowrap                         " don't wrap lines
set ruler
set shiftwidth=2
set expandtab
set scrolloff=3
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
let g:go_auto_sameids = 1
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


times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.009  000.009: --- VIM STARTING ---
000.127  000.118: Allocated generic buffers
000.377  000.250: locale set
000.380  000.003: clipboard setup
000.389  000.009: window checked
000.810  000.421: inits 1
000.816  000.006: parsing arguments
000.817  000.001: expanding arguments
003.564  002.747: shell init
003.935  000.371: Termcap init
003.950  000.015: inits 2
004.068  000.118: init highlight
004.635  000.161  000.161: sourcing /usr/local/share/vim/vim74/syntax/syncolor.vim
004.738  000.322  000.161: sourcing /usr/local/share/vim/vim74/syntax/synload.vim
021.256  016.456  016.456: sourcing /usr/local/share/vim/vim74/filetype.vim
021.304  016.978  000.200: sourcing /usr/local/share/vim/vim74/syntax/syntax.vim
022.779  001.399  001.399: sourcing /usr/local/share/vim/vim74/ftoff.vim
023.230  000.191  000.191: sourcing /Users/cuahuctemocosorio/.vim/bundle/Vundle.vim/autoload/vundle.vim
023.467  000.155  000.155: sourcing /Users/cuahuctemocosorio/.vim/bundle/Vundle.vim/autoload/vundle/config.vim
039.573  000.127  000.127: sourcing /Users/cuahuctemocosorio/.vim/bundle/vim-go/ftdetect/gofiletype.vim
039.764  014.547  014.420: sourcing /usr/local/share/vim/vim74/filetype.vim
039.971  000.069  000.069: sourcing /usr/local/share/vim/vim74/ftplugin.vim
040.115  000.032  000.032: sourcing /usr/local/share/vim/vim74/indent.vim
040.177  035.919  002.548: sourcing $HOME/.vimrc
040.180  000.193: sourcing vimrc file(s)
040.767  000.129  000.129: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/autoload/nerdtree.vim
041.795  000.419  000.419: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/path.vim
041.942  000.101  000.101: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/menu_controller.vim
042.049  000.068  000.068: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/menu_item.vim
042.178  000.091  000.091: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/key_map.vim
042.429  000.212  000.212: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/bookmark.vim
042.694  000.223  000.223: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/tree_file_node.vim
043.078  000.342  000.342: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/tree_dir_node.vim
043.305  000.186  000.186: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/opener.vim
043.552  000.208  000.208: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/creator.vim
043.635  000.043  000.043: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/flag_set.vim
043.789  000.115  000.115: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/nerdtree.vim
044.110  000.284  000.284: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/ui.vim
044.170  000.022  000.022: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/event.vim
044.246  000.039  000.039: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/notifier.vim
044.691  000.401  000.401: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/autoload/nerdtree/ui_glue.vim
056.538  000.087  000.087: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/nerdtree_plugin/exec_menuitem.vim
057.038  000.475  000.475: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/nerdtree_plugin/fs_menu.vim
057.252  016.972  013.527: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/plugin/NERD_tree.vim
057.675  000.188  000.188: sourcing /Users/cuahuctemocosorio/.vim/bundle/ctrlp.vim/autoload/ctrlp/mrufiles.vim
057.868  000.535  000.347: sourcing /Users/cuahuctemocosorio/.vim/bundle/ctrlp.vim/plugin/ctrlp.vim
058.362  000.398  000.398: sourcing /Users/cuahuctemocosorio/.vim/bundle/auto-pairs/plugin/auto-pairs.vim
058.693  000.246  000.246: sourcing /Users/cuahuctemocosorio/.vim/bundle/vim-go/plugin/go.vim
059.047  000.020  000.020: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/autoloclist.vim
059.107  000.017  000.017: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/balloons.vim
059.146  000.017  000.017: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/checker.vim
059.183  000.017  000.017: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/cursor.vim
059.223  000.021  000.021: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/highlighting.vim
059.261  000.018  000.018: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/loclist.vim
059.298  000.018  000.018: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/modemap.vim
059.336  000.019  000.019: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/notifiers.vim
059.374  000.019  000.019: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/registry.vim
059.413  000.019  000.019: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/signs.vim
060.044  000.455  000.455: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/autoload/syntastic/util.vim
071.958  000.077  000.077: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/autoloclist.vim
072.057  000.069  000.069: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/balloons.vim
072.293  000.209  000.209: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/checker.vim
072.428  000.109  000.109: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/cursor.vim
072.542  000.088  000.088: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/highlighting.vim
072.877  000.310  000.310: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/loclist.vim
072.997  000.094  000.094: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/modemap.vim
073.093  000.071  000.071: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/notifiers.vim
073.467  000.349  000.349: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/registry.vim
073.585  000.092  000.092: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/signs.vim
074.550  015.117  013.194: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic.vim
074.776  000.122  000.122: sourcing /Users/cuahuctemocosorio/.vim/bundle/ag.vim/plugin/ag.vim
077.973  003.115  003.115: sourcing /Users/cuahuctemocosorio/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim
078.372  000.069  000.069: sourcing /usr/local/share/vim/vim74/plugin/getscriptPlugin.vim
078.577  000.179  000.179: sourcing /usr/local/share/vim/vim74/plugin/gzip.vim
078.820  000.218  000.218: sourcing /usr/local/share/vim/vim74/plugin/logiPat.vim
078.867  000.020  000.020: sourcing /usr/local/share/vim/vim74/plugin/manpager.vim
079.056  000.166  000.166: sourcing /usr/local/share/vim/vim74/plugin/matchparen.vim
079.620  000.537  000.537: sourcing /usr/local/share/vim/vim74/plugin/netrwPlugin.vim
079.680  000.023  000.023: sourcing /usr/local/share/vim/vim74/plugin/rrhelper.vim
079.743  000.034  000.034: sourcing /usr/local/share/vim/vim74/plugin/spellfile.vim
079.913  000.141  000.141: sourcing /usr/local/share/vim/vim74/plugin/tarPlugin.vim
080.048  000.100  000.100: sourcing /usr/local/share/vim/vim74/plugin/tohtml.vim
080.241  000.162  000.162: sourcing /usr/local/share/vim/vim74/plugin/vimballPlugin.vim
080.452  000.171  000.171: sourcing /usr/local/share/vim/vim74/plugin/zipPlugin.vim
080.567  001.877: loading plugins
080.730  000.163: loading packages
080.749  000.019: inits 3
081.162  000.413: reading viminfo
081.189  000.027: setting raw mode
081.229  000.040: start termcap
081.359  000.130: clearing screen
083.320  000.390  000.390: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/autoload/syntastic/log.vim
083.369  001.620: opening buffers
084.213  000.844: BufEnter autocommands
084.218  000.005: editing files in windows
084.485  000.267: VimEnter autocommands
084.489  000.004: before starting main loop
085.428  000.939: first screen update
085.430  000.002: --- VIM STARTED ---


times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.010  000.010: --- VIM STARTING ---
000.097  000.087: Allocated generic buffers
000.328  000.231: locale set
000.331  000.003: clipboard setup
000.340  000.009: window checked
000.759  000.419: inits 1
000.766  000.007: parsing arguments
000.767  000.001: expanding arguments
003.550  002.783: shell init
003.888  000.338: Termcap init
003.905  000.017: inits 2
004.022  000.117: init highlight
004.558  000.163  000.163: sourcing /usr/local/share/vim/vim74/syntax/syncolor.vim
004.664  000.326  000.163: sourcing /usr/local/share/vim/vim74/syntax/synload.vim
020.322  015.607  015.607: sourcing /usr/local/share/vim/vim74/filetype.vim
020.361  016.099  000.166: sourcing /usr/local/share/vim/vim74/syntax/syntax.vim
022.008  001.594  001.594: sourcing /usr/local/share/vim/vim74/ftoff.vim
022.440  000.191  000.191: sourcing /Users/cuahuctemocosorio/.vim/bundle/Vundle.vim/autoload/vundle.vim
022.694  000.168  000.168: sourcing /Users/cuahuctemocosorio/.vim/bundle/Vundle.vim/autoload/vundle/config.vim
045.598  000.150  000.150: sourcing /Users/cuahuctemocosorio/.vim/bundle/vim-go/ftdetect/gofiletype.vim
045.823  021.515  021.365: sourcing /usr/local/share/vim/vim74/filetype.vim
045.981  000.037  000.037: sourcing /usr/local/share/vim/vim74/ftplugin.vim
046.135  000.038  000.038: sourcing /usr/local/share/vim/vim74/indent.vim
076.532  072.339  032.697: sourcing $HOME/.vimrc
076.541  000.180: sourcing vimrc file(s)
077.221  000.133  000.133: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/autoload/nerdtree.vim
078.300  000.472  000.472: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/path.vim
078.452  000.106  000.106: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/menu_controller.vim
078.561  000.068  000.068: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/menu_item.vim
078.695  000.094  000.094: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/key_map.vim
078.959  000.224  000.224: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/bookmark.vim
079.233  000.232  000.232: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/tree_file_node.vim
079.653  000.377  000.377: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/tree_dir_node.vim
079.886  000.191  000.191: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/opener.vim
080.139  000.212  000.212: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/creator.vim
080.223  000.044  000.044: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/flag_set.vim
080.382  000.120  000.120: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/nerdtree.vim
080.755  000.334  000.334: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/ui.vim
080.828  000.033  000.033: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/event.vim
080.911  000.042  000.042: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/lib/nerdtree/notifier.vim
081.383  000.424  000.424: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/autoload/nerdtree/ui_glue.vim
095.462  000.124  000.124: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/nerdtree_plugin/exec_menuitem.vim
096.132  000.635  000.635: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/nerdtree_plugin/fs_menu.vim
096.440  019.731  015.866: sourcing /Users/cuahuctemocosorio/.vim/bundle/nerdtree/plugin/NERD_tree.vim
096.981  000.230  000.230: sourcing /Users/cuahuctemocosorio/.vim/bundle/ctrlp.vim/autoload/ctrlp/mrufiles.vim
097.309  000.749  000.519: sourcing /Users/cuahuctemocosorio/.vim/bundle/ctrlp.vim/plugin/ctrlp.vim
098.011  000.591  000.591: sourcing /Users/cuahuctemocosorio/.vim/bundle/auto-pairs/plugin/auto-pairs.vim
098.589  000.457  000.457: sourcing /Users/cuahuctemocosorio/.vim/bundle/vim-go/plugin/go.vim
098.970  000.021  000.021: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/autoloclist.vim
099.036  000.019  000.019: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/balloons.vim
099.078  000.019  000.019: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/checker.vim
099.120  000.019  000.019: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/cursor.vim
099.159  000.019  000.019: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/highlighting.vim
099.198  000.018  000.018: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/loclist.vim
099.238  000.020  000.020: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/modemap.vim
099.279  000.020  000.020: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/notifiers.vim
099.321  000.020  000.020: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/registry.vim
099.362  000.020  000.020: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/signs.vim
100.192  000.619  000.619: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/autoload/syntastic/util.vim
112.638  000.093  000.093: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/autoloclist.vim
112.757  000.082  000.082: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/balloons.vim
113.056  000.266  000.266: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/checker.vim
113.208  000.122  000.122: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/cursor.vim
113.335  000.098  000.098: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/highlighting.vim
113.706  000.343  000.343: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/loclist.vim
113.840  000.105  000.105: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/modemap.vim
113.947  000.080  000.080: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/notifiers.vim
114.384  000.410  000.410: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/registry.vim
114.526  000.112  000.112: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic/signs.vim
115.587  016.204  013.874: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/plugin/syntastic.vim
115.844  000.133  000.133: sourcing /Users/cuahuctemocosorio/.vim/bundle/ag.vim/plugin/ag.vim
119.628  003.682  003.682: sourcing /Users/cuahuctemocosorio/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim
120.077  000.074  000.074: sourcing /usr/local/share/vim/vim74/plugin/getscriptPlugin.vim
120.305  000.200  000.200: sourcing /usr/local/share/vim/vim74/plugin/gzip.vim
120.570  000.238  000.238: sourcing /usr/local/share/vim/vim74/plugin/logiPat.vim
120.616  000.020  000.020: sourcing /usr/local/share/vim/vim74/plugin/manpager.vim
120.821  000.181  000.181: sourcing /usr/local/share/vim/vim74/plugin/matchparen.vim
121.399  000.552  000.552: sourcing /usr/local/share/vim/vim74/plugin/netrwPlugin.vim
121.472  000.022  000.022: sourcing /usr/local/share/vim/vim74/plugin/rrhelper.vim
121.537  000.035  000.035: sourcing /usr/local/share/vim/vim74/plugin/spellfile.vim
121.703  000.137  000.137: sourcing /usr/local/share/vim/vim74/plugin/tarPlugin.vim
121.831  000.094  000.094: sourcing /usr/local/share/vim/vim74/plugin/tohtml.vim
122.012  000.152  000.152: sourcing /usr/local/share/vim/vim74/plugin/vimballPlugin.vim
122.224  000.171  000.171: sourcing /usr/local/share/vim/vim74/plugin/zipPlugin.vim
122.339  002.180: loading plugins
122.438  000.099: loading packages
122.448  000.010: inits 3
122.908  000.460: reading viminfo
122.934  000.026: setting raw mode
14802.679  14679.745: waiting for return
14802.685  000.006: start termcap
14802.819  000.134: clearing screen
14805.765  000.576  000.576: sourcing /Users/cuahuctemocosorio/.vim/bundle/syntastic/autoload/syntastic/log.vim
14805.822  002.427: opening buffers
14807.060  001.238: BufEnter autocommands
14807.067  000.007: editing files in windows
14808.210  001.143: VimEnter autocommands
14808.216  000.006: before starting main loop
14809.236  001.020: first screen update
14809.238  000.002: --- VIM STARTED ---
