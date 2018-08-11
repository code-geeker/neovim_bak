
call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'benekastah/neomake', { 'on': ['Neomake'] }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'Shougo/vimshell.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-sleuth'
Plug 'junegunn/vim-easy-align'
Plug 'stephpy/vim-php-cs-fixer'

"Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }

Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
"Plug 'wookiehangover/jshint.vim'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'

Plug 'unblevable/quick-scope'
Plug 'vim-scripts/matchit.zip'
Plug 'itchyny/vim-cursorword'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'mattn/emmet-vim'

"Plug 'mhinz/vim-startify'


Plug 'Raimondi/delimitMate'

Plug 'ap/vim-css-color'
Plug 'gregsexton/MatchTag'
Plug 'airblade/vim-rooter'
"Plug 'm2mdas/phpcomplete-extended'
" Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }


Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'Lokaltog/vim-easymotion'

"Plug 'sjl/gundo.vim'
"Plug 'simnalamburt/vim-mundo'

Plug 'alvan/vim-php-manual', {'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }

Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

"Plug 'modess/vim-phpcolors'
"Plug 'rafaelndev/deoplete-laravel-plugin', {'for': ['php'], 'do': 'composer install'}
"Plug 'YankRing.vim'
Plug 'rking/ag.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'


Plug 'jwalton512/vim-blade'
Plug 'kshenoy/vim-signature'

Plug 'terryma/vim-expand-region'
Plug 'vim-php/tagbar-phpctags.vim'
Plug 'ludovicchabant/vim-gutentags'
"Plug 'jsfaint/gen_tags.vim'

Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf.vim'

Plug 'vim-scripts/DoxygenToolkit.vim'

Plug 'wellle/targets.vim'

Plug 'ryanoasis/vim-devicons'

call plug#end()

" phpcomplete_extended
"let g:phpcomplete_index_composer_command = '/usr/local/bin/composer'

let g:python3_host_prog = "/usr/local/bin/python3"

"deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.default = '[a-zA-Z_]\w{2,}?'

let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.php = '\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.php =
			\ '\w+|[^. \t]->\w*|\w+::\w*'

inoremap <expr><Enter>  pumvisible() ? "\<C-y>" : "\<Enter>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"


"NERDTree
"autocmd vimenter * NERDTree
"autocmd VimEnter * wincmd p
nnoremap <leader>l :NERDTreeFind<CR>


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeMapActivateNode='<tab>'
" 显示隐藏文件
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nmap <F7> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_phpctags_bin='~/.config/nvim/phpctags'

" 忽略文件
let NERDTreeIgnore=[
    \ '.git$[[dir]]',
    \ '.vscode$[[dir]]',
    \ '.idea$[[dir]]',
    \ '.DS_Store$[[file]]',
    \ '.swp$[[file]]'
\ ]

nmap <F6> :NERDTreeToggle<CR>


let NERDTreeAutoDeleteBuffer = 1


"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_tabs=0

let g:airline#extensions#whitespace#enabled = 0


nmap <Space>1 <Plug>AirlineSelectTab1
nmap <Space>2 <Plug>AirlineSelectTab2
nmap <Space>3 <Plug>AirlineSelectTab3
nmap <Space>4 <Plug>AirlineSelectTab4
nmap <Space>5 <Plug>AirlineSelectTab5
nmap <Space>6 <Plug>AirlineSelectTab6
nmap <Space>7 <Plug>AirlineSelectTab7
nmap <Space>8 <Plug>AirlineSelectTab8
nmap <Space>9 <Plug>AirlineSelectTab9


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
"let g:syntastic_javascript_checkers=['jshint']

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


"multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-j>'
let g:multi_cursor_prev_key='<C-k>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'



"CtrlSF 插件配置
let g:ctrlsf_auto_close = 1
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_indent = 2
let g:ctrlsf_winsize = '50%'

nmap     <Leader>s <Plug>CtrlSFPrompt
vmap     <Leader>s <Plug>CtrlSFVwordPath
vmap     <Leader>S <Plug>CtrlSFVwordExec
nmap     <Leader>w <Plug>CtrlSFCwordPath
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
let g:neosnippet#snippets_directory='~/.config/nvim/plugged/vim-snippets/snippets'


"devicons
"let g:WebDevIconsUnicodeDecorateFolderNodes=1
"let g:WebDevIconsNerdTreeAfterGlyphPadding=''
"let g:WebDevIconsNerdTreeGitPluginForceVAlign=0

"if exists('g:loaded_webdevicons')
    "call webdevicons#refresh()
"endif



"fuzzy search
function! s:config_fuzzyall(...) abort
  return extend(copy({
  \   'converters': [
  \     incsearch#config#fuzzy#converter(),
  \     incsearch#config#fuzzyspell#converter()
  \   ],
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))


"YRShow
"nnoremap <silent> <F9> :YRShow<CR>

"PHP namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

"交换窗口
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>


" ==== gutentags settings ====

let g:gutentags_project_root = [ 'composer.json', '.git', '.env' ]

let g:gutentags_ctags_tagfile = 'tags'
" Exclude css, html, js files from generating tag files
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js',"build", ".git", "node_modules", "*.config/nvim/plugged/*"]

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--languages=php','--php-kinds=ctifnv','--fields=+aimS']

" Where to store tag files
let s:vim_tags = expand('~/.cache/tags')
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

let g:gutentags_cache_dir = s:vim_tags

" ==== End gutentags settings ====


"vim-expand-region

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)



function! s:config_fuzzyall(...) abort
  return extend(copy({
  \   'converters': [
  \     incsearch#config#fuzzy#converter(),
  \     incsearch#config#fuzzyspell#converter()
  \   ],
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))


"去除空白符
function! RemoveTrailingWhitespace()
  if &ft != "diff"
    let b:curcol = col(".")
    let b:curline = line(".")
    silent! %s/\s\+$//
    silent! %s/\(\s*\n\)\+\%$//
    call cursor(b:curline, b:curcol)
  endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()


"相对行号
nnoremap <leader>r :call  Relativenum()<cr>
function! Relativenum()
    if &rnu == 1
        set nornu
    else
        set rnu
    endif
endfunction


map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


"ctags
nnoremap <c-]> g<c-]>
vnoremap <c-]> g<c-]>

if !exists("g:potion_command")
    let g:potion_command = "/Applications/PhpStorm.app/Contents/bin/format.sh -s ~/.vim/zgia.xml"
endif

function! PotionCompileAndRunFile()
    silent !clear
    execute "!" . g:potion_command . " %:p"
endfunction

nnoremap <silent> <leader>f :call PotionCompileAndRunFile()<CR>


"PHPCD
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']


"vim-devicons
" NERDTress File highlighting
let g:webdevicons_enable = 1



if exists("g:loaded_webdevicons")
    call webdevicons#refresh()
endif



"undotree
nnoremap <F5> :UndotreeToggle<cr>


" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0
"autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :w \| :call PhpCsFixerFixFile()<CR>


" fzf settings -------------------------------------------------------

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_layout = { 'down': '~60%' }
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

nmap <silent> <Space>m :<C-u>FZFMru<CR>
nmap <silent> <Space>f :<C-u>FZF ~/Vagrant<CR>
nmap <silent> <Space>c :<C-u>FZF<CR>
nmap <silent> <Space>b :<C-u>FZFNeigh<CR>

command! FZFMru call fzf#run({
\ 'source':  reverse(s:all_files()),
\ 'sink':    'edit',
\ 'options': '-m -x +s',
\ 'down':    '60%' })

function! s:all_files()
  return extend(
  \ filter(copy(v:oldfiles),
  \        "v:val !~ 'fugitive:\\|NERD_tree\\|__CtrlSF__\\|^/tmp/\\|.git/'"),
  \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

function! s:fzf_neighbouring_files()
  let current_file =expand("%")
  let cwd = fnamemodify(current_file, ':p:h')
  let command = 'ag -g "" -f ' . cwd . ' --depth 0'

  call fzf#run({
        \ 'source': command,
        \ 'sink':   'e',
        \ 'options': '-m -x +s',
        \ 'window':  'enew' })
endfunction

command! FZFNeigh call s:fzf_neighbouring_files()



nmap ea <Plug>(EasyAlign)
xmap ea <Plug>(EasyAlign)
