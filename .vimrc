set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"nerdtree"
Plugin 'scrooloose/nerdtree'
"gruvbox - retro groove color scheme
Plugin 'morhetz/gruvbox'
"A code-completion engine
"Plugin 'valloric/youcompleteme'
"Support for SVN, Git
Plugin 'juneedahamed/vc.vim'
"Alternate files quickly (.cxx -> .hxx)
Plugin 'a.vim'
"TTCN-3 syntax highlighting
Plugin 'ttcn-syntax'
"Multiple selection (hit Ctrl + n multiple times)
Plugin 'vim-multiple-cursors'
"Statusline plugin - provides statuslines and prompts for several apps
"Plugin 'powerline/powerline'
" Different version of powerline and themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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


set ts=4           "tab = 4 spaces
set autoindent     "auto ident filetype
set softtabstop=4 shiftwidth=4 expandtab "insert 4 spaces instead of tab
set nowrap         "noline wrape
set guioptions+=b  "botom scrolbar
set guioptions-=T  "remove iconbar
set number         "show line number
set history=50     "length of history
set incsearch      "increment search
set showcmd        "show typing comand
set cindent shiftwidth=4   "automatyczne wcięcia o głębokości 4
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
set mouse=a

syntax enable      "enable syntax

"NERDtree under F2
map <F2> :NERDTreeToggle<CR>
"remove whitespaces form end of line
map <F12> :%s/\s*$//g<CR>
"vc.vim plugin mapped operations
map <F5> :VCBlame<CR>

"Hotkeys form windows (CTRL + C etc.)
source $VIMRUNTIME/mswin.vim
behave mswin


"Gruvbox colorscheme settings
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'soft'

"powerline settings
"let g:Powerline_symbols = 'fancy'

"Install ctags:
"Ubuntu/Debian - sudo apt-get install ctags
"Fedora - sudo yum install ctags
"in ~/.vimrc, add set tags=tags
"Go to your project directory, and run ctags -R
set tags=tags

