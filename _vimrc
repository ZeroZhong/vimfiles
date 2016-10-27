"=====================基本配置区
"中文帮助
set helplang=cn "中文帮助

"同时支持GBK和UTF-8编码
set fileencodings=ucs-bom,utf-8,cp936 
set fileencoding=utf-8
set termencoding=utf-8
set encoding=cp936 "set encoding=utf-8

"一些基本显示
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set shortmess=atI   "启动的时候不显示那个援助乌干达儿童的提示
winpos 5 5          "设定窗口位置  
set lines=40 columns=155    "设定窗口大小  
set go=             "不要图形按钮 
set t_Co=256 "设置终端256色
colorscheme desert "设置配色方案
"colorscheme summerfruit256 "设置配色方案
"set guifont=Courier_New:h10:cANSI   "设置字体
"set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
"set guifont=Arial_monospaced_for_SAP:h10:cANSI

"窗口显示设置
"菜单栏
set guioptions+=m           " 隐藏菜单栏
"工具栏
set guioptions-=T           " 隐藏工具栏
"状态栏
"set ruler "显示状态栏标尺
set laststatus=2  "总是显示状态行
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"命令栏
set showcmd       "输入的命令显示出来，看的清楚些
set cmdheight=2   "命令行（在状态行下）的高度，默认为1，这里是2
"滚动条
"set guioptions+=b "底部的 (水平) 滚动条总是存在
"set guioptions+=R "如有垂直分割的窗口，右边的滚动条总是存在
"开启光亮光标行
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white gui=underline guibg=NONE guifg=NONE
"开启高亮光标列
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white gui=NONE guibg=grey guifg=NONE
"设置光标形状
"set gcr=n-v-c:ver25-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor
"set gcr+=a:blinkon0

"一些基本设置
set history=3000 "历史记录数
set nu              "显示行号
set relativenumber  "显示相对行号
syntax on           "语法高亮

"搜索设置
set magic "设置魔术规则
set ignorecase "搜索忽略大小写
set hlsearch   "搜索逐字符高亮
set showmatch  "高亮显示匹配的括号
set incsearch  "设置快速搜索

"文件操作设置
set completeopt=longest,menu "打开文件类型检测, 加了这句才可以用智能补全
set autoread "设置当文件被改动时自动载入
set confirm " 在处理未保存或只读文件的时候，弹出确认
set nobackup  "禁止生成临时文件
set noswapfile
set noeb "去掉输入错误的提示声音
filetype on "侦测文件类型
filetype plugin on "载入文件类型插件
filetype indent on "为特定文件类型载入相关缩进文

"选择设置
set clipboard+=unnamed "共享剪贴板  
"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"代码格式设置
"set noexpandtab "不要用空格代替制表符
"set smarttab "在行和段开始处使用制表
set tabstop=4   "定义tab所等同的空格长度
set shiftwidth=4   "自动缩进所使用的空白长度指示
set softtabstop=4  "按下tab键，插入的是空格和tab制表符的混合
set backspace=2 "使回格键（backspace）正常处理indent, eol, start等
set smartindent "为C程序提供自动缩进
set autoindent  "自动缩进
set cindent     "
set expandtab   "空格替换tab键
"autocmd FileType c,cpp,java set shiftwidth=4 | set expandtab

"=====================插件区域
filetype off                  " required

set rtp+=$VIM/vimfiles/bundle/vundle/  
call vundle#rc('$VIM/vimfiles/bundle/')  
Bundle 'gmarik/vundle'  
Bundle 'tpope/vim-pathogen'
Bundle 'mhinz/vim-startify'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline'
Bundle 'fholgado/minibufexpl.vim'

execute pathogen#infect()

let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

"nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
let g:tagbar_width=30                    "窗口宽度的设置
map <F3> :Tagbar<CR>

"let g:miniBufExplMapWindowNavVim = 1   
"let g:miniBufExplMapWindowNavArrows = 1   
"let g:miniBufExplMapCTabSwitchBufs = 1   
"let g:miniBufExplModSelTarget = 1  
"let g:miniBufExplMoreThanOne=0

"map <F11> :MBEbp<CR>
"map <F12> :MBEbn<CR>
