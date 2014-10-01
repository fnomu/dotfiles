syntax enable 
set background=dark
colorscheme Tomorrow-Night 
set number
set ruler
set incsearch
set showmode
set title
set smartindent
set showmatch
set autoindent
set ignorecase
set noerrorbells
set novisualbell 
set mouse=a
set vb t_vb=
set wildmode=longest,list,full
set encoding=utf-8
set fileencoding=latin-1
set complete+=k
set formatoptions-=r "insertmode
set formatoptions-=o "normalmode
autocmd BufReadPost,BufNewFile *.t :setl filetype=perl

set t_Co=256
"16
set display=uhex

"Message Line
set cmdheight=2

"Status Line
set laststatus=2

"no auto insert of # when <C-R>
autocmd FileType * setlocal formatoptions-=ro

highlight ZenkakuSpace cterm=underline ctermfg=LightBlue guibg=darkgray
match ZenkakuSpace /¿/

highlight Comment ctermfg=LightBlue
hi Number ctermfg=Cyan



set wildmenu
noremap j gj
noremap k gk
noremap gj j
noremap gk k
nnoremap J 20j
nnoremap K 20k
nnoremap L 20l
nnoremap H 20h
nnoremap ,pt <Esc>:%! perltidy -se<CR>
set nocompatible               " be iMproved
filetype off

nnoremap s <Nop>
nnoremap sw <C-w>w 
nnoremap s= <C-w>= 
nnoremap <M-LEFT> :bp<CR>
nnoremap <M-RIGHT> :bn<CR>
"<Leader> = \
nnoremap <Leader>v :e $MYVIMRC<CR>
nnoremap <Leader>s :up $MYVIMRC<Bar>:source $MYVIMRC<Bar>

augroup EchoFilePath
	autocmd WinEnter * execute "normal! 1\<C-g>"
augroup END


inoremap {{  {}<Left>
inoremap [[  []<Left>
inoremap ((  ()<Left>
inoremap jj <Esc>

vnoremap v $h
:cnoremap ss shell


if has('vim_starting')
	  set runtimepath+=~/.vim/bundle/neobundle.vim
	    call neobundle#rc(expand('~/.vim/bundle/'))
	    endif
	    " originalrepos on github
	    NeoBundle 'Shougo/neobundle.vim'
	    NeoBundle 'Shougo/vimproc'
	    NeoBundle 'VimClojure'
	    NeoBundle 'Shougo/vimshell'
	    NeoBundle 'Shougo/unite.vim'
	    NeoBundle 'Shougo/neocomplcache'
	    NeoBundle 'Shougo/neosnippet'
	    NeoBundle 'jpalardy/vim-slime'
	    NeoBundle 'scrooloose/syntastic'
	    NeoBundle 'DrawIt'
	    NeoBundle 'emmet-vim'
	    NeoBundle 'thinca/vim-quickrun'
	    NeoBundle 'thinca/vim-ref'
	    NeoBundle 'perldoc-vim'
	    NeoBundle 'surround.vim'
	    NeoBundle 'nerdtree'
	    NeoBundle 'kana/vim-operator-user.git'
	    NeoBundle 'altercation/vim-colors-solarized'
	    NeoBundle 'chriskempson/tomorrow-theme'
	    NeoBundle 'tpope/vim-fugitive'
	    NeoBundle 'mru.vim'
	    NeoBundle 'mattn/benchvimrc-vim'
	    NeoBundle 'bling/vim-airline'
	    NeoBundle 'vim-scripts/taglist.vim'
	    NeoBundle  'itchyny/landscape.vim'
	    NeoBundle  'tpope/vim-commentary'
	    NeoBundle  'mileszs/ack.vim'
	    NeoBundle  'terryma/vim-multiple-cursors'
	    let g:Powerline_theme = 'landscape'
	    let g:Powerline_colorscheme = 'landscape'
	    let g:airline_theme = 'landscape'
	    ""NeoBundle 'https://bitbucket.org/kovisoft/slimv'
		
	    
	    filetype plugin indent on     " required!
	    filetype indent on

" neocomplcache
NeoBundle 'Shougo/neocomplcache'
" Disable AutoComplPop.
 let g:acp_enableAtStartup = 0
 " Use neocomplcache.
 let g:neocomplcache_enable_at_startup = 1
 " Use smartcase.
 let g:neocomplcache_enable_smart_case = 1
 " Set minimum syntax keyword length.
 let g:neocomplcache_min_syntax_length = 3
 let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

 " Define dictionary.
 let g:neocomplcache_dictionary_filetype_lists = {
     \ 'default' : ''
         \ }

"         " Plugin key-mappings.
         inoremap <expr><C-g>     neocomplcache#undo_completion()
         inoremap <expr><C-l>     neocomplcache#complete_common_string()
"
         " Recommended key-mappings.
         " <CR>: close popup and save indent.
         inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
         function! s:my_cr_function()
           return neocomplcache#smart_close_popup() . "\<CR>"
           endfunction
           " <TAB>: completion.
           inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
           " <C-h>, <BS>: close popup and delete backword char.
           inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
           inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
           inoremap <expr><C-y>  neocomplcache#close_popup()
           inoremap <expr><C-e>  neocomplcache#cancel_popup()
map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc create new tab 
map <silent> [Tag]x :tabclose<CR>
" tx close tab
map <silent> [Tag]n :tabnext<CR>
" tn move next tab 
map <silent> [Tag]p :tabprevious<CR>
" tp move previous tab

"NERD Tree setting
nnoremap <f2> :NERDTreeToggle<CR>
"close Vim where there is only NERDtree window
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

