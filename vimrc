set nocompatible              " be iMproved, required
filetype off                  " required
" set term=cons25
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " setup tabs width
"
"
set tabstop=2
set shiftwidth=2
set expandtab
let mapleader = ","
set number

set background=dark
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'moll/vim-node'
"Plugin 'wookiehangover/jshint.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'marijnh/tern_for_vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/promptline.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-scripts/marvim'
Plugin 'mbbill/undotree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-repeat'
"Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'flowtype/vim-flow'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dkprice/vim-easygrep'
Plugin 'jpalardy/vim-slime'
Plugin 'kshenoy/vim-signature'
Plugin 'airblade/vim-gitgutter'
"Plugin 'tpope/vim-sleuth'
Plugin 'w0rp/ale'
Plugin 'easymotion/vim-easymotion'
Plugin 'fatih/vim-go'
Plugin 'tmhedberg/matchit'
Plugin 'tomlion/vim-solidity'
Plugin 'heavenshell/vim-jsdoc'


" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" " Set default color scheme
colorscheme slate

" " YCM Python 3 support
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'


" map = to autoformat
noremap <leader>f  :Autoformat<CR>
let g:formatterpath = ['/usr/local/bin/']

let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1
nmap <silent> <leader><leader>k <Plug>(ale_previous_wrap)
nmap <silent> <leader><leader>j <Plug>(ale_next_wrap)
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_fixers = {
			\   'javascript': ['eslint', 'prettier'],
			\   'typescript': ['tslint', 'prettier'],
			\   'json': ['fixjson', 'prettier'],
			\}

let g:ale_linters = {
			\   'javascript': ['eslint'],
			\   'typescript': ['tsserver', 'tslint'],
			\}


"
" Tern settings
" """""""""""""""""
let g:tern_show_argument_hints='on_hold'
" " and
let g:tern_map_keys=1


" CTRL P Ignore Node_Modules
let g:ctrlp_custom_ignore = '\v[\/]\.*(node_modules|bower_components)$'
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

" Easier Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Airline powerline font "
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

" Undo History Hotkey
nnoremap <C-u> :UndotreeToggle<cr>

" Ultisnips bindings
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader>j"
let g:UltiSnipsJumpBackwardTrigger="<leader>k"


" vim-autoformat esformatter
let g:formatdef_my_custom_javascript = '"prettier"'
let g:formatters_javascript = ['my_custom_javascript']
let g:formatters_typescript = ['my_custom_javascript']


nnoremap <leader><leader>f :ALEFix<CR>


let g:slime_target = "tmux"

let g:tsuquyomi_disable_quickfix = 1

" Searching 
set incsearch

hi SpellBad ctermfg=215 guifg=#ffaf5f 
hi SpellCap ctermfg=215 guifg=#ffaf5f 
hi ErrorMsg ctermfg=215 guifg=#ffaf5f 
hi vimError ctermfg=215 guifg=#ffaf5f 
