call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"Get rid of vi compat
set nocompatible

set mousehide
set mousemodel=popup

set foldmethod=indent
set foldlevel=99
set foldenable

set noswapfile

filetype on
filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultComplettionType = "context"

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

if has("gui_running")
    colorscheme wombat
else
    colorscheme Tomorrow-Night
end

set guifont =ProggySquareTTSZ\ 12

set nocompatible
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set shiftround
set autoindent
set copyindent
set et

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch

set visualbell
set number
set ruler
set guioptions-=T
set guioptions-=r

let mapleader=","
let maplocalleader="\\"


set pastetoggle=<F2>

let python_highlight_all=1


set wildmode=list:longest

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp/,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp/,/tmp

let g:tagbar_usearrow = 1

"Tagbar on ,l
nnoremap <silent> <leader>l :TagbarToggle<CR>

"Nerdtree on ,t
nnoremap <leader>t :NERDTreeToggle<CR>

"CTAGS
set tags+=~/borg
set tags+=~/.vim/tags/gtsam
"Build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


"OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1

au BufNewFile,BufRead *.todolist set filetype=todolist

"Fish causes issues with ctags
set noshelltemp
set shell=sh
