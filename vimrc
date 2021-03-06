" .vimrc
" James Linder
" clear any existing autocommands
autocmd!

" Basic Settings
set backspace=indent,eol,start  " Backspace of newlines
"set cursorline                  " Highlight current line
set expandtab                   " Expand tabs to spaces
set hlsearch                    " Highlight search
set incsearch                   " Show the `best match so far' during search
set laststatus=2
set list                        " Show invisible chars
"set listchars=tab:»·,trail:·    " Show tabs and trailing whitespace only
set listchars=tab:>-,trail:~           " Show tabs and trailing whitespace only
set noai                        " No autoindent
set nocompatible                " Use Vim defaults (not compatible w/ vi)
set number                      " Display line numbers
set ruler                       " Show the cursor position all the time
set scrolloff=3                 " Always show 3 lines around cursor
set showmatch                   " Show matching braces
set showmode                    " Show which mode buffer is in
set showcmd                     " Command info in lower right
set sw=4 sts=4 ts=4             " 4 spaces
set t_Co=256                    " Use 256 colors
set wildmenu                    " Autocomplete filenames
set wildmode=list:longest,full
set wrap                        " Turn on line wrapping

" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
" by default), and ~ covert case over line breaks; also have the cursor keys
" wrap in insert mode:
set whichwrap=h,l,~,[,]

" have Y behave analogously to D and C rather than to dd and cc (which is
" already done by yy):
noremap Y y$

" Make it easier to switch between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" have syntax highlighting in terminals which can display colours:
if has('syntax') && (&t_Co > 2)
 syntax on
endif

" use "[RO]" for "[readonly]" to save space in the message line:
set shortmess+=r

" Highlight trailing white spaces (an alternate to list and listchars)
"highlight TrailingWhitespace ctermbg=yellow guibg=yellow
"match TrailingWhitespace /\s\+$/
"if version >= 700
"   autocmd InsertEnter * match TrailingWhitespace /\s\+\%#\@<!$/
"   autocmd InsertLeave * match TrailingWhitespace /\s\+$/
"endif

"call pathogen#infect()

" Set the color scheme
colorscheme darkblue

