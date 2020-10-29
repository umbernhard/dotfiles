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

Plugin 'salsifis/vim-transpose'

Plugin 'Glench/Vim-Jinja2-Syntax'

Plugin 'itchyny/lightline.vim'

Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'

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

" lightline config
let g:lightline = {
\ 'colorscheme': 'solarized',
\ }


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
autocmd FileType md setlocal spell
autocmd FileType tex setlocal spell
autocmd FileType text setlocal spell
syntax spell toplevel

"set textwidth=80
set colorcolumn=80  
set nu rnu

set autoindent
filetype plugin indent on " enable file type detection


set shortmess+=I " disable startup message
set incsearch " incremental search (as string is being typed)
set hls " highlight search
set listchars=tab:>>,nbsp:~ " set list to see tabs and non-breakable spaces
"set lbr " line break
set scrolloff=5 " show lines above and below cursor (when possible)
set noshowmode " hide mode
set laststatus=2
set backspace=indent,eol,start " allow backspacing over everything
set timeout timeoutlen=1000 ttimeoutlen=100 " fix slow O inserts
set lazyredraw " skip redrawing screen in some cases
set autochdir " automatically set current directory to directory of last opened file
set hidden " allow auto-hiding of edited buffers
set history=8192 " more history
set nojoinspaces " suppress inserting two spaces between sentences
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" smart case-sensitive search
set ignorecase
set smartcase
" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu
set mouse+=a " enable mouse mode (scrolling, selection, etc)
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

set clipboard=unnamed

" disable audible bell
set noerrorbells visualbell t_vb=

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Always strip traling whitespace on save for certain files
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    keepp %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Highlight status line
highlight SignColumn ctermbg=234
highlight StatusLine cterm=bold ctermfg=245 ctermbg=235
highlight StatusLineNC cterm=bold ctermfg=245 ctermbg=235


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
let g:syntastic_python_checkers = ['python']
let g:syntastic_python_python_exec = 'python3'

"let g:syntastic_tex_checkers = ['chktex', 'lacheck', 'proselint']
let g:syntastic_tex_checkers = ['chktex', 'proselint']

" YAML specific config
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
