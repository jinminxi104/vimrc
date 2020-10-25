""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ��ʾ���  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set nu              " ��ʾ�к�  
set go=             " ��Ҫͼ�ΰ�ť  
syntax on           " �﷨����  
autocmd InsertLeave * se nocul  " ��ǳɫ������ǰ��  
autocmd InsertEnter * se cul    " ��ǳɫ������ǰ��  
set ruler           " ��ʾ���  
set showcmd         " �����������ʾ�������������Щ  
set scrolloff=3     " ����ƶ���buffer�Ķ����͵ײ�ʱ����3�о���  
set novisualbell    " ��Ҫ��˸(������)  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "״̬����ʾ������  
set laststatus=1    " ������ʾ״̬��(1),������ʾ״̬��(2)  
set foldenable      " �����۵�  
set foldmethod=manual   " �ֶ��۵�  
set background=dark "����ʹ�ú�ɫ 
set fileformats=unix,dos
set cursorcolumn
" ������ɫ����
"colorscheme murphy
"���� 
"if (has("gui_running")) 
"   set guifont=Bitstream\ Vera\ Sans\ Mono\ 10 
"endif 
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set enc=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"��������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ss :w!<cr>
nmap qq :q!<cr>
map <C-c> <Esc>bvey
nmap to :tabnew<CR>  
nmap tc :tabclose<CR>
nmap tn :tabnext<CR>
nmap fl :e .<CR>  
nmap tl :TlistOpen<CR>  
nmap gl <C-w><Left>
nmap gr <C-w><Right>
nmap gu <C-w><Up>
nmap gd <C-w><Down>
nmap dg <Esc>:vimgrep /\<<C-R><C-W>\>/  ./**/*.cpp  ./**/*.h ./**/*.txt  \| cw<cr>
map <F2> <Esc>:bp<cr>
map <F3> <Esc>:bn<cr>
map <F4> <Esc>:cp<cr>
map <F5> <Esc>:cn<cr>
nmap <F7> <C-]>
nmap <F6> <C-t>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""ʵ������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler                   " ��״̬�����
set cursorline              " ͻ����ʾ��ǰ��
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
autocmd FileType c,cpp,h,hpp setlocal et sta sw=4 sts=4
setlocal et sta sw=4 sts=4
"set smartindent
set showmatch
" ��ʷ��¼��
set history=1000
"�������Դ�Сд
set ignorecase
"�������ַ�����
set hlsearch
set incsearch
"�����滻
set gdefault
" ������ʾ״̬��
set laststatus=2
" �����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
set cmdheight=2
" ����ļ�����
filetype on
" �������·��ŵĵ��ʲ�Ҫ�����зָ�
set iskeyword+=_,$,@,%,#,-
" �ַ���������������Ŀ
set linespace=0
" ��ǿģʽ�е��������Զ���ɲ���
set wildmenu
" ʹ�ظ����backspace����������indent, eol, start��
set backspace=2
" ͨ��ʹ��: commands������������ļ�����һ�б��ı��
set report=0
" �ڱ��ָ�Ĵ��ڼ���ʾ�հף������Ķ�
set fillchars=vert:\ ,stl:\ ,stlnc:\
" ������ʾƥ�������
set showmatch
" ƥ�����Ÿ�����ʱ�䣨��λ��ʮ��֮һ�룩
set matchtime=1
" ����ƶ���buffer�Ķ����͵ײ�ʱ����3�о���
set scrolloff=3

"ctags
set tags=tags;
"set autochdir
