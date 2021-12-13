set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'mattn/vim-lsp-settings'
Plugin 'scrooloose/nerdtree'
"Plugin 'prabirshrestha/asyncomplete-file.vim'
Plugin 'taglist.vim'
call vundle#end()            " required
filetype plugin indent on    " required
" use PluginInstall for installing

" NERDTree config
" open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"map ot to open NERDTree
nnoremap tt :NERDTreeToggle<CR>
nnoremap tf :NERDTreeFind<cr>
nnoremap fnt :NERDTreeFocus<cr>
nnoremap bm :Bookmark<cr>
let NERDTreeShowBookmarks=1
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Tlist
nnoremap tl :Tlist<cr>
let Tlist_Ctags_Cmd="ctags"
"let Tlist_Show_One_File = 1 
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Use_Right_Window = 1

" disable auto_pop for auto-complete
"let g:asyncomplete_auto_popup = 0
let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

syntax enable
syntax on
set nocompatible
set noswapfile
set nu 
set go=  
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul 
set ruler 
"set cursorline
set showcmd
set scrolloff=3 
set novisualbell  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}  
set laststatus=1 
set foldenable 
set foldmethod=manual 
set fileformats=unix,dos
"set cursorcolumn

set term=screen-256color
set background=dark
colorscheme janah
"colorscheme torte

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set enc=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

" shotcuts
nnoremap ss :w!<cr>
nnoremap qq :q!<cr>
nnoremap <C-c> <Esc>bvey
vnoremap <C-c> "+y 
nnoremap <C-v> "+p
nnoremap to :tabnew<CR>  
nnoremap tc :tabclose<CR>
nnoremap tn :tabnext<CR>
nnoremap fl :e .<CR>  
nnoremap tl :TlistOpen<CR>  
nnoremap sl <C-w><Left>
nnoremap sr <C-w><Right>
nnoremap su <C-w><Up>
nnoremap sd <C-w><Down>
nnoremap dg <Esc>:vimgrep /\<<C-R><C-W>\>/  ./**/*.cpp  ./**/*.h ./**/*.txt  \| cw<cr>
nnoremap <F2> <Esc>:bp<cr>
nnoremap <F3> <Esc>:bn<cr>
nnoremap <F4> <Esc>:cp<cr>
nnoremap <F5> <Esc>:cn<cr>
nnoremap <F7> <C-]>
nnoremap <F6> <C-t>
nnoremap gb <C-t>
inoremap () ()<Left>
inoremap {} {}<Left><CR><CR><Up><Tab>
inoremap [] []<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap <tab> <space><space><space><space>

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nnoremap edc :LspPeekDeclaration<cr>
    nnoremap edf :LspPeekDefinition<cr>
    nnoremap eim :LspPeekImplementation<cr>
    nnoremap etd :LspPeekTypeDefinition<cr>
    nnoremap gdc :LspDeclaration<cr>
    nnoremap gdf :LspDefinition<cr>
    nnoremap gim :LspImplementation<cr>
    nnoremap gtd :LspTypeDefinition<cr>
    nnoremap <nowait> hov :LspHover<cr>
    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END




set tabstop=4
set syntax=on
set autoindent
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType c,cpp,h,hpp setlocal et sta sw=4 sts=4
setlocal et sta sw=4 sts=4
"set smartindent
set showmatch
set history=1000
set ignorecase
set hlsearch
set incsearch
set gdefault
set laststatus=2
set cmdheight=2
filetype on
set iskeyword+=_,$,@,%,#,-
set linespace=0
set wildmenu
set backspace=2
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set matchtime=1
set scrolloff=3

"ctags
set tags=tags;
