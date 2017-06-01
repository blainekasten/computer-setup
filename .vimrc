set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'garbas/vim-snipmate'
Plugin '1995eaton/vim-better-javascript-completion'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jordwalke/flatlandia'
Plugin 'flazz/vim-colorschemes'
Plugin 'mxw/vim-jsx'
Plugin 'sbdchd/neoformat'

Plugin 'mhartington/oceanic-next'
Plugin 'altercation/vim-colors-solarized'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'chrisbra/Colorizer'
Plugin 'Yggdroot/indentLine'
Plugin 'Raimondi/delimitMate'
Plugin 'dracula/dracula-theme', {'rtp': 'vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'Chiel92/vim-autoformat'
Plugin 'Shougo/neocomplete.vim'
Plugin 'mileszs/ack.vim'

call vundle#end()
filetype plugin indent on

"autocmd BufWritePre *.js Neoformat
let g:neoformat_javascript_prettier = {
            \ 'exe': 'prettier',
            \ 'args': ['--stdin', '--single-quote', '--trailing-comma all'],
            \ 'stdin': 1,
            \ }

imap jk <esc>

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set syntax=whitespace
set noswapfile
set showcmd
set backspace=indent,eol,start
filetype on
set number
set tabstop=2
set shiftwidth=2
set expandtab
set conceallevel=0
let g:vim_json_syntax_conceal = 0

set mouse=a

syntax enable
colorscheme dracula
set background=dark

set pastetoggle=<leader>p
vnoremap <C-c> "*y<CR>
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen
highlight clear SignColumn

call gitgutter#highlight#define_highlights()

nnoremap ; :
map <space> /
set ic 
" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
set wildmenu
set laststatus=2
set colorcolumn=100
set wrap linebreak nolist
set virtualedit=
set display+=lastline
set nowrap

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
let g:neocomplete#sources#syntax#min_keyword_length = 3

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif

function! SetupCtrlP()
  if exists("g:loaded_ctrlp") && g:loaded_ctrlp
    augroup CtrlPExtension
      autocmd!
      autocmd FocusGained  * CtrlPClearCache
      autocmd BufWritePost * CtrlPClearCache
    augroup END
  endif
endfunction
if has("autocmd")
  autocmd VimEnter * :call SetupCtrlP()
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme = 'dracula'
nmap <leader>x :bp <BAR> bd #<CR>
nmap <leader>n :enew<cr>
nmap <leader>, :bnext<CR>
nmap <leader>. :bprevious<CR>
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_check_on_open = 0

"let g:syntastic_aggregate_errors = 1
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '!'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '!'

noremap <leader>t :SyntasticToggleMode<CR>

let g:syntastic_mode_map = { 'passive_filetypes': ['sass', 'scss','html'] }
map <Leader>e :lnext<CR>
map <Leader>E :lprev<CR>
map <Leader>n :NERDTreeToggle<CR>

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
let &t_Co=256

