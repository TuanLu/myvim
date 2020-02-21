autocmd BufEnter,BufRead *.conf setf dosini
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx"

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '{/*','right': '*/}' } }
let g:NERDCustomDelimiters={
	\ 'javascript.jsx': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}




set dir=/tmp
set regexpengine=1
set cursorline
let g:vim_markdown_folding_disabled = 1
let g:gruvbox_termcolors = 235
let g:indentLine_color_term = 256
autocmd BufWritePre * %s/\s\+$//e
let mapleader=","
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen=1
"set guifont=Hack:h11
set guifont=Droid Sans Mono for Powerline
set encoding=UTF-8
set nocompatible              " be iMproved, required
set backspace=indent,eol,start
set shiftwidth=2
set tabstop=2
set autoindent
set termguicolors
filetype plugin on                  " required
set clipboard=unnamed
set rtp+=~/.fzf
set colorcolumn=0
call plug#begin('~/.vim/plugged')

" Enable line number:
:set nu

execute 'silent !print "\e[?2004l"'

" CTRL + O show tree of files
map <C-o> :NERDTreeToggle<CR>

" CTRL + P find files
map <C-p> :Files<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
Plug 'VundleVim/Vundle.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

"Auto close tag
Plug 'alvan/vim-closetag'

"CTRL+ 0  to quit editing"
" Lightline makes your vim more beautiful
Plug 'itchyny/lightline.vim'
Plug 'dikiaap/minimalist'
set laststatus=2
" Make sure you use single quotes
Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/vim-python/python-syntax'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Stylus Highlighting
"Plug 'wavded/vim-stylus'
" Vue Syntax Highlighting:
"Plug 'posva/vim-vue'
" Javascript Syntax Highlights:
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Svelte syntax highlighting
"Plug 'evanleck/vim-svelte'
" Markdown syntax highlighting
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Typescript Syntax Highlighting Support
Plug 'leafgarland/typescript-vim'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

"Plug '/usr/local/opt/fzf'
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
" Commenting Purpose
" Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'
Plug 'preservim/nerdcommenter'
" Plug 'tomtom/tcomment_vim'
"Plug 'scrooloose/nerdcommenter'
" Docker Syntax Highlighting
Plug 'ekalinin/Dockerfile.vim'
" Ack
Plug 'mileszs/ack.vim'
" Import cost
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }"
" Initialize plugin system
call plug#end()
set t_Co=256
syntax on
set background=dark
colorscheme gruvbox
let NERDTreeShowHidden=1
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ycm_autoclose_preview_window_after_completion=1
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)
