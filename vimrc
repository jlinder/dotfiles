" 2008.11.13 - Got some basic setup stuff from here:
"              http://www.stripey.com/vim/vimrc.html
"

" first clear any existing autocommands:
autocmd!


" Set some common stuff for myself
set ts=4
set shiftwidth=4
set expandtab
set wrap
set noai
set laststatus=2
set ruler      " show the cursor position all the time
set nocompatible   " Use Vim defaults (much better!)
set nu


" have syntax highlighting in terminals which can display colours:
if has('syntax') && (&t_Co > 2)
 syntax on
endif

" Set the color scheme
colorscheme darkblue

" use "[RO]" for "[readonly]" to save space in the message line:
set shortmess+=r

" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd


" Highlight search
set hlsearch

" show the `best match so far' as search strings are typed:
set incsearch


" * Keystrokes -- Moving Around

" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
" by default), and ~ covert case over line breaks; also have the cursor keys
" wrap in insert mode:
set whichwrap=h,l,~,[,]


" * Keystrokes -- Formatting

" have Y behave analogously to D and C rather than to dd and cc (which is
" already done by yy):
noremap Y y$


" Highlight trailing white spaces
highlight TrailingWhitespace ctermbg=yellow guibg=yellow
match TrailingWhitespace /\s\+$/

if version >= 700
   autocmd InsertEnter * match TrailingWhitespace /\s\+\%#\@<!$/
   autocmd InsertLeave * match TrailingWhitespace /\s\+$/
endif

call pathogen#infect()

