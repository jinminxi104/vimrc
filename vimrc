""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set nu              " 显示行号
set go=             " 不要图形按钮
syntax on           " 语法高亮
autocmd InsertLeave * se nocul  " 用浅色高亮当前行
autocmd InsertEnter * se cul    " 用浅色高亮当前行
set ruler           " 显示标尺
set showcmd         " 输入的命令显示出来，看的清楚些
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离
set novisualbell    " 不要闪烁(不明白)
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)
set foldenable      " 允许折叠
set foldmethod=manual   " 手动折叠
set background=dark "背景使用黑色
set fileformats=unix,dos
" 设置配色方案
"colorscheme murphy
"字体
"if (has("gui_running"))
"   set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
"endif
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set enc=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ss :w!<cr>
nmap qq :q!<cr>
map <C-c> <Esc>bvey
nmap to :tabnew<CR>
nmap tc :tabclose<CR>
nmap tn :tabnext<CR>
nmap fl :e .<CR>
map <C-Left> <C-w><Left>
map <C-Right> <C-w><Right>
map <C-Up> <C-w><Up>
map <C-Down> <C-w><Down>
map <C-g> <Esc>:vimgrep /\<<C-R><C-W>\>/  ./**/*.cpp  ./**/*.h  \| cw<cr>
map <F2> <Esc>:bp<cr>
map <F3> <Esc>:bn<cr>
map <F4> <Esc>:cp<cr>
map <F5> <Esc>:cn<cr>
nmap <F7> <C-]>
nmap <F6> <C-t>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
:inoremap () ()<Left>
:inoremap {} {}<Left><CR><CR><Up><Tab>
:inoremap [] []<Left>
:inoremap "" ""<Left>
:inoremap '' ''<Left>
:inoremap <tab> <space><space><space><space>
set tabstop=4
set syntax=on
set autoindent
autocmd FileType python setlocal et sta sw=4 sts=4
"set smartindent
set showmatch
" 历史记录数
set history=1000
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
" 总是显示状态行
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 侦测文件类型
filetype on
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

"ctags
set tags=tags;
"set autochdir


