let mapleader = ','
let g:mapleader = ','
cd ~/www/
source $HOME/.config/nvim/ui.vim
source $HOME/.config/nvim/plugins.vim


filetype plugin indent on
syntax on

set autowrite
set iskeyword+=_,$,@,%,#
set whichwrap+=<,>,h,l,[,] " Wrap arrow keys between lines

"" Encoding
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8

set bomb
set binary


set autoread " Reload files changed outside vim
let autosave=30
set backspace=indent,eol,start " Enable delete over line breaks and automatically-inserted indentation
set clipboard=unnamed
"set fileformat=unix " Set unix line endings
set fileformats=unix,mac,dos
set hidden " Don't unload buffers when they are abandoned, instead stay in the background
set lazyredraw " Screen will not be redrawn while running macros, registers or other non-typed comments
set noerrorbells
set nospell
set shortmess+=I
set viminfo='100,f1 " Save up to 100 marks, enable capital marks
set visualbell " Turn off audible bell


set modifiable
set wildmenu
set wildmode=longest,list:longest
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=go/pkg				 " Go static files
set wildignore+=go/bin				 " Go bin files
set wildignore+=go/bin-vagrant			 " Go bin-vagrant files
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Better Completion
" set complete=.,w,b,u,t
set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete

set nobackup
set backupdir=~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.tmp,~/tmp,/var/tmp,/tmp
set history=1000
set undodir=~/.tmp " set undo file location
set undofile
set undolevels=1000 " use many muchos levels of undo


"无写入备份
set nowritebackup
" 缓冲区不使用交换文件
set noswapfile

set noautochdir

" Linebreak on 500 characters
set lbr
set tw=500

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m :%s/<C-V><cr>//ge<cr>'tzt'm

set t_Co=256
"let g:Powerline_symbols = 'fancy'

"Automatically remove trailing spaces when saving a file.
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" autocmd BufEnter * lcd %:p:h


"记录上次关闭的文件及状态
" set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


vnoremap < <gv
vnoremap > >gv

" Resize splits when the window is resized {{{
autocmd VimResized * :wincmd =
"}}}

"setl bufhidden=delete | bnext

" Do not show stupid q: window
map q: :q

" Quick escaping in insert mode
inoremap jj <ESC>
inoremap \\ <ESC>


nnoremap  cc :bp\|bd #<CR><ESC>

let g:php_manual_online_search_shortcut = '<F3>'


map <silent> <leader>v :e ~/.config/nvim/init.vim<CR><CR>
noremap <silent> <leader><leader>v :source ~/.config/nvim/init.vim<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

map <silent> <leader>g :GitGutterLineHighlightsToggle<CR>

" map <leader>h and <leader>l to buffer prev/next buffer
noremap <Space>h :bp<CR>
noremap <Space>l :bn<CR>

" Keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

nnoremap <Up> :echomsg "use k"<cr>
nnoremap <Down> :echomsg "use j"<cr>
nnoremap <Left> :echomsg "use h"<cr>
nnoremap <Right> :echomsg "use l"<cr>

"nmap ,cs :let @*=expand("%")<CR>
"nmap ,cl :let @*=expand("%:p")<CR>

" relative path  (src/foo.txt)
nnoremap <leader>cr :let @*=expand("%")<CR>

" absolute path  (/something/src/foo.txt)
nnoremap <leader>cp :let @*=expand("%:p")<CR>

" filename       (foo.txt)
nnoremap <leader>cf :let @*=expand("%:t")<CR>

" directory name (/something/src)
nnoremap <leader>cd :let @*=expand("%:h")<CR>


nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

"Automatically source the init.vim file on save.
"autocmd BufWritePost init.vim source %


let php_htmlInStrings = 1
"let php_sql_query = 1


" Highlight text over the 80 character limit
":au BufWinEnter *.php let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
":au BufWinEnter *.php let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)


if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
