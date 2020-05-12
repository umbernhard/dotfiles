set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-surround'

Plugin 'luochen1990/rainbow'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'blueyed/vim-diminactive'

Plugin 'tmux-plugins/vim-tmux-focus-events'

Plugin 'vim-syntastic/syntastic'

Plugin 'godlygeek/tabular'

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
let g:rainbow_conf = {
\	'guifgs': ['darkred', 'darkyellow', 'yellow', 'green', 'blue', 'magenta'],
\	'ctermfgs': ['darkred', 'darkyellow', 'yellow', 'green', 'blue', 'magenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\}

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle


" Indent Guides Config
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgrey   ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black ctermbg=black
let g:indent_guides_guide_size = 1

" Vim config
syntax on
colorscheme harlequin

" Do spell checking
set spelllang=en
set spellfile=~/.vim/spell/en.utf-8.add

" Check spelling in certain files
autocmd FileType *.md setlocal spell
autocmd FileType *.tex setlocal spell
syntax spell toplevel

set expandtab
set ts=4
set shiftwidth=4
set textwidth=80
set colorcolumn=80  
set nu rnu

set clipboard=unnamed


" Tmux focus
let g:diminactive_enable_focus = 1

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
