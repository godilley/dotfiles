set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'shawncplus/phpcomplete.vim'
Plugin 'posva/vim-vue'
Plugin 'nelsyeung/twig.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'mhinz/vim-signify'
Plugin 'zivyangll/git-blame.vim'
Plugin 'editorconfig/editorconfig-vim'

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

" squiggly line hack
highlight EndOfBuffer ctermfg=black ctermbg=black

" deal with vertical stuff
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

set nospell             " disable vim spelling
set rnu                 " relative line numbers
syntax enable           " enable syntax processing
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set number              " show line numbers
set showcmd             " show command in bottom bar
" set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" Search settings
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

set runtimepath^=~/.vim/bundle/ctrlp.vim

set mouse=a

" color scheme

" git blame stuff
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

set nowrap
