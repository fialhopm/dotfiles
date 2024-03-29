" ==================== Plugins ====================
" Managed through vim-plug: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim.plugged')

Plug 'https://github.com/tpope/vim-vinegar'
Plug 'https://github.com/vimwiki/vimwiki'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'

call plug#end()

" ========== vimwiki ==========
let wiki = {}
" let wiki.path = '~/my_wiki/'  " repo is called wiki, but symlink in home dir should be vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'go': 'go'}
let g:vimwiki_hl_headers = 1
set tw=120
set formatoptions+=w

" ========== gitgutter ==========
set updatetime=100
let g:gitgutter_enabled = 0
let g:gitgutter_set_sign_backgrounds = 1
highlight GitGutterAdd    guifg=red ctermfg=2
highlight GitGutterChange guifg=red ctermfg=3
highlight GitGutterDelete guifg=red ctermfg=1


" ==================== Configuration ====================
" Credit: http://learnvimscriptthehardway.stevelosh.com/

" ========== General Config ==========
set number  			        "line numbers
set ruler   			        "show row/column position
set history=1000                "store command line history
set visualbell                  "no sounds
set autoread                    "reload files changed outside vim
set hidden                      "buffers can exist in the background w/o being in a window
set nocompatible
set backspace=indent,eol,start  "use backspace in iterm2


" ========== File Types ==========
filetype plugin indent on
autocmd BufNewFile,BufRead *.py set ft=python
autocmd BufNewFile,BufRead *.sql set ft=sql
autocmd BufNewFile,BufRead *.json set ft=json
autocmd BufNewFile,BufRead *.md set ft=markdown


" ========== Turn Off Swap Files ==========
set noswapfile
set nobackup
set nowb


" ========== Persistent Undo ==========
if has('persistent_undo')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif


" ========== Indentation ==========
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set list listchars=tab:\ \ ,trail:·

" ========== Wraps and Folds ==========
set nowrap             "don't wrap lines
set linebreak          "wrap lines at convenient points
set foldmethod=indent  "fold based on indent
set foldnestmax=3      "deepest fold is 3 levels
set nofoldenable       "don't fold by default


" ========== Completion ==========
set wildmode=list:longest
set wildmenu


" ========== Scrolling ==========
set scrolloff=8       "start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" ========== Editing ==========
" Yank into clipboard by default
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif
set nofixendofline     "disable automatic new line at EOF


" ========== Colors ==========
syntax on
let &t_Co=256   "make colors work in iTerm2
set colorcolumn=121
colorscheme torte
highlight ColorColumn ctermbg=235 guibg=#2c2d27


" ========== Highlight ==========
set hlsearch
set incsearch  "highlight while typing


" ========== Key Mappings ==========
" Set leader and local leader
let mapleader=","
let maplocalleader="\\"

" Open .vimrc in split window
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Map "jk" in insert mode to escape key
inoremap jk <esc>

" Disable escape key in insert mode to learn mapping above
inoremap <esc> <nop>

" Move up and down at the start of each line
nnoremap <c-j> +
nnoremap <c-k> -

" Map "H" to beginning of line
nnoremap <c-h> I<esc>l

" Map "L" to end end of line
nnoremap <c-l> A<esc>

" Uppercase inner word in insert mode
inoremap <c-u> <esc>viwUeA

" Surround word in single quotes
nnoremap <leader>' ea'<esc>bi'<esc>el

" Surround word in double quotes
nnoremap <leader>" ea"<esc>bi"<esc>el

" Surround word in double asterisks (bold in markdown)
nnoremap <leader>* ea**<esc>bbi**<esc>el

" Search all files for word under the cursor
nnoremap <c-f> :vimgrep <cword> **/*.py <bar> cw<cr>

set completeopt-=preview
