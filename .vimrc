" printing with
" :hardcopy file.ps
" :hardcopy
" let &printexpr="(v:cmdarg=='' ? ".
"    \"system('lpr' . (&printdevice == '' ? '' : ' -P' . &printdevice)".
"    \". ' ' . v:fname_in) . delete(v:fname_in) + v:shell_error".
"    \" : system('mv '.v:fname_in.' '.v:cmdarg) + v:shell_error)"

" spell checking
" set spell spelllang=bg

" rename moving up and down when wrapped text
map <C-P> gk
map <C-N> gj

colorscheme murphy
set number
set wrap

" set keymap=bulgarian-pesho

" auto change to the currect dir
set autochdir

" highlighting the 80+ chars
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

set ts=8
set sts=2
set sw=2
set expandtab

set winwidth=80
set fileencodings=utf-8,cp1251
"set number
set autoindent
set ruler
set ignorecase      " when searching
set smartcase       " case matters when seach pattern has upper case
set hlsearch
set incsearch
filetype plugin indent on

set keymap=bulgarian-phonetic-pesho
set iminsert=0
set imsearch=-1

set guioptions=aci
set mousefocus     " focus follows mouse
set mouse=a
set formatoptions=1 " connected with the next one
set lbr             " word wrap (on word, not screen)
if has('gui_running')
    " set showtabline=2   " always show tab line
    set guifont=Monospace\ 9
endif
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set laststatus=2    " always show status line

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
"map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ~/workspace/cgal/workingcopy<CR>
set tags+=~/workspace/cgal/workingcopy
set noswapfile

autocmd FileType c set omnifunc=ccomplete#Complete

set wildmode=longest:full
set wildmenu
