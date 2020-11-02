call plug#begin()
Plug 'preservim/tagbar'
nmap <leader>t :TagbarToggle<CR>

" color select/picker
" use <Alt>+<r>
Plug 'KabbAmine/vCoolor.vim'

Plug 'junegunn/vim-easy-align'
vmap <Enter> <Plug>(EasyAlign)
nmap <Enter> <Plug>(EasyAlign)

Plug 'rhysd/clever-f.vim'
" let g:clever_f_across_no_line = 1
Plug 'easymotion/vim-easymotion'
nmap ;; <Plug>(easymotion-overwin-f)

Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1
map mm <Plug>NERDCommenterToggle

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

imap <c-x><c-f> <plug>(fzf-complete-path)

if isdirectory(".git")
    " if in a git project, use :GFiles
    noremap <leader>f :GFiles<cr>
else
    " otherwise, use :FZF
    noremap <leader>f :Files<cr>
endif

noremap <leader>b :Buffers<CR>
noremap <leader>F :Files ~<CR>
noremap <leader>r :Rg<CR>

noremap <c-p> :Commands<CR>
noremap // :BLines<CR>
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
" move search on top
let $FZF_DEFAULT_OPTS='--reverse'
" Customize fzf colors to match your color scheme
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
set hidden
set shortmess+=c
set signcolumn=yes
set updatetime=300
let g:coc_global_extensions = [
            \ "coc-css",
            \ "coc-html",
            \ "coc-snippets",
            \ "coc-json",
            \ "coc-python",
            \ "coc-clangd",
            \ "coc-sh",
            \ "coc-sql",
            \ "coc-explorer",
            \ "coc-tsserver",]

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <TAB>
            \ pumvisible() ? coc#_select_confirm() :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

Plug 'honza/vim-snippets'

" coc explorer
nmap <space>e :CocCommand explorer<CR>

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

Plug 'mbbill/undotree'
set undodir=~/.config/nvim/undodir
set undofile
nnoremap <leader>u :UndotreeShow<CR>

Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
let g:mkdp_markdown_css = '~/.config/nvim/stuff/github-markdown.css'

" better search
Plug 'romainl/vim-cool' " when search done, turn off highlight
set hlsearch
set ignorecase
set incsearch
set smartcase
set magic " for regex

" search word in the center screen
nnoremap n nzzzv
nnoremap N Nzzzv

" fancy
Plug 'yuttie/comfortable-motion.vim'
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>

" Better Tabline display
Plug 'mkitt/tabline.vim'

Plug 'ntpeters/vim-better-whitespace'
highlight ExtraWhitespace ctermbg=None

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'gregsexton/MatchTag', { 'for': 'html' }

Plug 'sheerun/vim-polyglot' " highlight stuff

" show color human can see
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
let g:Hexokinase_highlighters = ['virtual']

Plug 'Yggdroot/indentLine'
let g:indentLine_char = '▏'
let g:indentLine_bufTypeExclude = ['help', 'terminal', 'markdown', 'text']
let g:indentLine_fileTypeExclude = ['help', 'text', 'markdown']


" colorscheme stuff
Plug 'NLKNguyen/papercolor-theme'
Plug 'gruvbox-community/gruvbox'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" theme
highlight WildMenu guifg=#87bb7c

set termguicolors

" set background=light
set background=dark

" colorscheme PaperColor
colorscheme gruvbox
let g:gruvbox_invert_selection='0'

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)

" set colorcolumn=80
set cursorline
" highlight CursorLine guibg=bold gui=bold
highlight CursorLine term=bold cterm=bold

set tabstop=4 softtabstop=4
set shiftwidth=4
" 4 space in html, css look non-fancy, 2 space is better
autocmd BufRead,BufNewFile *.scss,*.css,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2
" convert tab to space, some issue when I see file at github,...
set expandtab

set number relativenumber
syntax enable

set nocompatible
filetype plugin indent on
set encoding=UTF-8
set mouse=a
set clipboard=unnamedplus

set autoindent
set smartindent
set autoread
set autowrite
set nobackup
set noswapfile
set nowritebackup

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" fix indenting visual block
vmap < <gv
vmap > >gv

imap jj <Esc>
map <space> <leader>

" tab remap
nmap <C-t> :tabnew<Return>
nmap <S-j> gT
nmap <S-k> gt

" Easier navigation between tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

nmap <space>s :setlocal spell! spell?<CR>
" ]s — move to the next mispelled word
" [s — move to the previous mispelled word
" zg — add a word to the dictionary
" zug — undo the addition of a word to the dictionary
" z= — view spelling suggestions for a mispelled word

command! Reload execute "source ~/.config/nvim/init.vim"

" Show full path of the current file
nnoremap <space>? :echo expand("%:p")<CR>

" Display different types of white spaces
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Save A File Without Root Permission With sudo
command! W execute "w !sudo tee %"

nmap <leader>a :call FloatTerm()<CR>
nmap <leader>g :call FloatTerm("tig")<CR>
function! FloatTerm(...)
    " Configuration
    let height = float2nr((&lines - 2) * 0.6)
    let row = float2nr((&lines - height) / 2)
    let width = float2nr(&columns * 0.6)
    let col = float2nr((&columns - width) / 2)
    " Border Window
    let border_opts = {
                \ 'relative': 'editor',
                \ 'row': row - 1,
                \ 'col': col - 2,
                \ 'width': width + 4,
                \ 'height': height + 2,
                \ 'style': 'minimal'
                \ }
    " Terminal Window
    let opts = {
                \ 'relative': 'editor',
                \ 'row': row,
                \ 'col': col,
                \ 'width': width,
                \ 'height': height,
                \ 'style': 'minimal'
                \ }
    let top = "╭" . repeat("─", width + 2) . "╮"
    let mid = "│" . repeat(" ", width + 2) . "│"
    let bot = "╰" . repeat("─", width + 2) . "╯"
    let lines = [top] + repeat([mid], height) + [bot]
    let bbuf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(bbuf, 0, -1, v:true, lines)
    let s:float_term_border_win = nvim_open_win(bbuf, v:true, border_opts)
    let buf = nvim_create_buf(v:false, v:true)
    let s:float_term_win = nvim_open_win(buf, v:true, opts)
    " Styling
    hi FloatWinBorder guifg=#87bb7c
    call setwinvar(s:float_term_border_win, '&winhl', 'Normal:FloatWinBorder')
    call setwinvar(s:float_term_win, '&winhl', 'Normal:Normal')
    if a:0 == 0
        terminal
    else
        call termopen(a:1)
    endif
    startinsert
    autocmd TermClose * ++once :bd! | call nvim_win_close(s:float_term_border_win, v:true)
endfunction

augroup General
    au!
    " auto insert when open file
    autocmd BufNewFile *.cpp :read ~/.config/nvim/stuff/cppTemplate.cpp | normal!kdd3j
    autocmd BufNewFile *.fish  :call CheckFishFile()
    autocmd BufNewFile *.py :call CheckPyFile()
    autocmd BufNewFile *.sh  :call CheckShFile()
augroup END

function! CheckShFile()
    normal!i#! /usr/bin/env sh
    normal!o
endfunction

function! CheckPyFile()
    normal!i#! /usr/bin/env python3
    normal!o
endfunction

function! CheckFishFile()
    normal!i#! /usr/bin/env fish
    normal!o
endfunction
