"" vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"" ## Bundles here:
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'


filetype plugin indent on


" Basics
set t_Co=256
colorscheme symfony
highlight Pmenu ctermbg=39 gui=bold
set mouse=a
set number
let g:Powerline_symbols = 'fancy'

" Backup stuff
set nobackup
set nowritebackup
set noswapfile

set guioptions+=a
set clipboard=unnamedplus


" Smart tabbing / wrapping / autoindenting
set nowrap
set equalalways
set undolevels=150
set nocompatible
set autoindent
set backspace=2

if has("gui_running")
   set guioptions=-t
endif

" smarttabs
set smarttab

" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
nnoremap <silent> <F7> :NERDTreeToggle<CR>
nnoremap <silent> <F6> :NERDTreeFind<CR>
nnoremap <silent> <Tab> <C-P>


" All the Indenting Stuff
" while auto-indenting, indent by this much
set shiftwidth=4
" expand tabs to 4 spaces
set tabstop=4
" turn tabkeypresses into spaces
set noexpandtab
" treate tabkey as 4 spaces but respect hard hard tabs
set softtabstop=4
" Jump over everything with backspace
set backspace=eol,start,indent


" Special Key-Mapping

" Syntastic Error list
nnoremap <silent> <S-t> :FufBuffer<CR>
"nnoremap <silent> <C-e> :Errors<CR> 

" Search and Highlighting
set wrapscan
set magic
set showmatch
set hlsearch
set incsearch
set ignorecase smartcase
set enc=utf-8
set nofoldenable
set smartcase
syntax on


" Highlighting
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
autocmd BufWinEnter * setlocal cursorline
autocmd BufWinLeave * setlocal nocursorline


" General Options
set cmdheight=3
set cpoptions+=$
set virtualedit=all
set hidden
set nolazyredraw


" Statusline setup
set laststatus=2
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ [%b][0x%B]
set statusline+=%=
"set statusline+=%#statuserror#
"set statusline+=%{SyntasticStatuslineFlag()}


" Keep 4 lines top/bottom when scrolling
set scrolloff=25
set wildmenu
set fillchars=""
set clipboard=unnamed
set shortmess+=I
"set spellfile=~/.vim/dict.add
"
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
