autocmd BufEnter,BufRead *.conf setf dosini
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx"

" Align line-wise comment delimiters flush left instead of following code indentation
"let g:NERDDefaultAlign = 'left'
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '{/*','right': '*/}' } }
"let g:NERDCustomDelimiters={
"  \ 'javascript.jsx': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
"\}

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'


set autochdir
set tags+=./tags;
"Auto close tag
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


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
set path+=**
set wildignore+=*/node_modules/*
" set wildmenu
set backspace=indent,eol,start
set shiftwidth=2
set tabstop=2
set autoindent
set termguicolors
filetype plugin on                  " required
set clipboard=unnamed
set rtp+=~/.fzf
set colorcolumn=0
set hlsearch

"eslint settings
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_fixers = {
  \    'javascript': ['prettier', 'eslint'],
  \    'typescript': ['prettier', 'tslint'],
  \    'scss': ['prettier'],
  \    'html': ['prettier'],
\}
let g:ale_fix_on_save = 1
"Prettier settings
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync


call plug#begin('~/.vim/plugged')
"Setup pretier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }

Plug 'dense-analysis/ale'

" Enable line number:
:set nu

execute 'silent !print "\e[?2004l"'

" CTRL + O show tree of files
map <C-t> :NERDTreeToggle<CR>

" CTRL + P find files
map <C-p> :Files<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>T :Tags<CR>
nnoremap <Leader>F :Ag<CR>
"Shortcut for replace after hit Shift + 8
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'VundleVim/Vundle.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-gitgutter'
"Auto close tag
" Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'haya14busa/is.vim'
"CTRL+ 0  to quit editing"
" Lightline makes your vim more beautiful
Plug 'itchyny/lightline.vim'
Plug 'dikiaap/minimalist'
set laststatus=2
" Make sure you use single quotes
Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'ryanoasyais/vim-devicons'
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
"Plug 'suy/vim-context-commentstring'
"Plug 'preservim/nerdcommenter'
 Plug 'tomtom/tcomment_vim'
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



"=====================coc.nvim setup=======================
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" if has('patch8.1.1068')
"   " Use `complete_info` if your (Neo)Vim version supports it.
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
