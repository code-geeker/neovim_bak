
call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'Shougo/vimshell.vim'

Plug 'carlitux/deoplete-ternjs'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'wookiehangover/jshint.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
Plug 'itchyny/vim-cursorword'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'mattn/emmet-vim'

Plug 'mhinz/vim-startify'


Plug 'Raimondi/delimitMate'
Plug 'ap/vim-css-color'
Plug 'gregsexton/MatchTag'
Plug 'airblade/vim-rooter'
Plug 'godlygeek/tabular'
"Plug 'm2mdas/phpcomplete-extended'
" Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }


Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'Lokaltog/vim-easymotion'

Plug 'sjl/gundo.vim'
"Plug 'simnalamburt/vim-mundo'

Plug 'alvan/vim-php-manual'
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'modess/vim-phpcolors'

Plug 'YankRing.vim'
Plug 'rking/ag.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'jwalton512/vim-blade'
Plug 'ctrlpvim/ctrlp.vim'

"Plug 'phpvim/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }


Plug 'ryanoasis/vim-devicons'

call plug#end()



" phpcomplete_extended
"let g:phpcomplete_index_composer_command = '/usr/local/bin/composer'


"deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.default = '[a-zA-Z_]\w{2,}?'

"let g:deoplete#omni_patterns = {}
"let g:deoplete#omni_patterns.php = '\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.php =
			\ '\w+|[^. \t]->\w*|\w+::\w*'

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><Enter>  pumvisible() ? "\<C-y>" : "\<Enter>"



"NERDTree
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
nnoremap <leader>f :NERDTreeFind<CR>
nmap <F6> :NERDTreeToggle<CR>

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


nmap <F7> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:NERDTreeMapActivateNode='<tab>'

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1


" emmet
let g:user_emmet_mode           = 'a'
"let g:user_emmet_install_global = 0
let g:user_emmet_leader_key     = '<C-e>'

" delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_jump_expansion = 1

" syntastic 配置
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['jshint']

"let g:syntastic_php_checkers = ['php','phpcs','phpmd']
let g:syntastic_php_checkers = ['php']

 let g:syntastic_error_symbol = '✗'
 let g:syntastic_warning_symbol = '⚠'
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_loc_list_height = 5
" let g:syntastic_enable_highlighting = 0

" vim-easymotion
"map <Leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)


nnoremap s <Nop>
nnoremap sa :<C-u>CtrlP<Space>
nnoremap sb :<C-u>CtrlPBuffer<CR>
nnoremap sd :<C-u>CtrlPDir<CR>
nnoremap sf :<C-u>CtrlP<CR>
nnoremap sl :<C-u>CtrlPLine<CR>
nnoremap sm :<C-u>CtrlPMRUFiles<CR>
nnoremap sq :<C-u>CtrlPQuickfix<CR>
nnoremap ss :<C-u>CtrlPMixed<CR>
nnoremap st :<C-u>CtrlPTag<CR>

let g:ctrlp_map = '<Nop>'
" Guess vcs root dir
let g:ctrlp_working_path_mode = 'ra'
" Open new file in current window
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_extensions = ['tag', 'quickfix', 'dir', 'line', 'mixed']
let g:ctrlp_match_window = 'top,order:btt,min:1,max:20'

let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore --hidden -g ""'


"CtrlSF 插件配置
let g:ctrlsf_auto_close = 1
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_indent = 2
let g:ctrlsf_winsize = '50%'

nmap     <Leader>s <Plug>CtrlSFPrompt
vmap     <Leader>s <Plug>CtrlSFVwordPath
vmap     <Leader>S <Plug>CtrlSFVwordExec
nmap     <Leader>W <Plug>CtrlSFCwordPath
nnoremap <Leader>o :CtrlSFToggle<CR>
let g:ctrlsf_mapping = {
    \ "next": "n",
    \ "prev": "N",
    \ }

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.config/plugged/vim-snippets/snippets'



let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '


"Startify
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1

" http://stackoverflow.com/questions/13194428/is-better-way-to-zoom-windows-in-vim-than-zoomwin
" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <Leader>z :ZoomToggle<CR>
