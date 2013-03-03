"MY SETTINGS/NEEDED---------------------------------------------------------------
set nocompatible
filetype plugin indent on
" Set encoding
set encoding=utf-8
set fileformats=unix,dos

syntax on
"DISPLAY RELATED-----------------------------------------------------------------
set number
set scs
set nocuc
set noea
set numberwidth=2
set guifont=Consolas:h13
"set background=light
colorscheme vilight
set cmdheight=2
set list 
set listchars=tab:▸\ ,trail:◇,extends:»,precedes:«,eol:·
set cc=80
"NO TOOLBAR ---------------------------------------------------------------
set guioptions-=T
"HIGHLIGHT AFTER 80 COL WIDTH----------------------------------------------
":let w:m1=matchadd('Comment', '\%>80v.\+', -1)
"POPUP/COMPLETION MENUS----------------------------------------------------
set completeopt=menu,longest,preview
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
"GENERAL USE---------------------------------------------------------------
set backspace=indent,eol,start
set showcmd
set showmode
set showmatch
set matchtime=5
set ignorecase
set incsearch
set hlsearch
set smartcase
set ruler
set history=150
set timeoutlen=250
set autoindent
set smartindent
set smarttab
set tabstop=2
"use :set expandtab to switch back to soft tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set sidescroll=7
set scrolloff=3
"set textwidth=79
set nowrap
set nospell

"JAVASCRIPT SYNTAX OPTIONS (EXPANDED)---------------------------------
let javascript_enable_domhtmlcss=1

"CONCERNING JS AND CTAGS-----------------
nmap <leader>tb :TagbarToggle<CR>

"CLEAR HIGHLIGHTS----------------
nmap <leader>ch :nohls<CR>

"PYLINT -------------------------
""autocmd FileType python compiler pylint

"NERD TREE----------------------------------------
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>ntm :NERDTreeMirror<CR>
nmap <leader>ntf :NERDTreeFind<CR>
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']

"NERD COMMENTS--------------------------
" Command-/ to toggle comments
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i

"ACK---------------------------------
"" Command-Shift-F for Ack
map <D-F> :Ack<space>
" Command-T configuration------------
let g:CommandTMaxHeight=20

"fuzzy finder--------------------
nmap <leader>ff :FufFile<CR>
nmap <leader>fb :FufBuffer<CR>
nmap <leader>fd :FufDir<CR>
nmap <leader>ft :FufTag<CR>

" Moving cursor to other windows------------
nmap <s-down> <c-w>w
nmap <s-up> <c-w>W
nmap <s-left> <c-w>h
nmap <s-right> <c-w>l

"statusline setup
set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
set laststatus=2

"folding settings---------------------------------------------------------------
set foldmethod=indent   "fold based on indent
set nofoldenable        "dont fold by default

"jump to last cursor position when opening a file--------------------------
"dont do it when writing a commit log entry-----------------------------
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal g`\""
        endif
    end
endfunction

"FILETYPE STUFF------------------------
" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript


"MISC OPERATIONS-----------------------
" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>


"MISC CONFIG--------------------------
" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"MACVIM SPECIFIC---------------------
if has("gui_macvim")
    set transparency=10
    " Fullscreen takes up entire screen
    set fuoptions=maxhorz,maxvert

    " Command-Return for fullscreen
    macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>
  
    " Command-][ to increase/decrease indentation
    vmap <D-]> >gv
    vmap <D-[> <gv
endif

