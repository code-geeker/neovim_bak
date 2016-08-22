" colorscheme gruvbox
colorscheme dracula
set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types:h15

if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
elseif empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif

"set guitablabel=%t
set autoindent " autoindent based on line above, works most of the time
set background=dark
set breakindent
"set colorcolumn=80 " Make a mark for column 80
set copyindent " copy the previous indentation on autoindenting
set cursorline
set diffopt+=vertical
set expandtab " use spaces instead of tabs
set foldenable " enable folding
set foldlevelstart=99 " open most folds by default
set foldmethod=indent " fold based on indent level
set formatoptions+=or
set gdefault
set hlsearch " highlight searches by default
set ignorecase
set incsearch " find the next match as we type the search
set laststatus=2
set linebreak
" set linespace=2 " Set line spacing
" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮

set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶
set modelines=1
set mouse=a " Enable mouse use in all modes
set nocursorcolumn " Do not highlight column
set noequalalways
set nolist
set number
set showcmd
set numberwidth=4
set relativenumber
set ruler
set scrolloff=3 " Keep the cursor visible within 3 lines when scrolling
set showbreak=↪ " Show line wrapping
set showmatch
set smartcase
set smartindent " smarter indent for C-like languages
set shiftwidth=4 " when reading, tabs are 2 spaces
set softtabstop=4 " in insert mode, tabs are 2 spaces
set tabstop=4     " actual tabs occupy 8 characters
set splitbelow
set splitright
set textwidth=0 " turn off hard word wrapping
set wrap
set wrapmargin=0

syntax enable " enable syntax processing
