"=====================����������
"���İ���
set helplang=cn "���İ���

"ͬʱ֧��GBK��UTF-8����
set fileencodings=ucs-bom,utf-8,cp936 
set fileencoding=utf-8
set termencoding=utf-8
set encoding=cp936 "set encoding=utf-8

"һЩ������ʾ
set nocompatible  "ȥ��������й�viһ����ģʽ��������ǰ�汾��һЩbug�;���
set shortmess=atI   "������ʱ����ʾ�Ǹ�Ԯ���ڸɴ��ͯ����ʾ
winpos 5 5          "�趨����λ��  
set lines=40 columns=155    "�趨���ڴ�С  
set go=             "��Ҫͼ�ΰ�ť 
set t_Co=256 "�����ն�256ɫ
colorscheme desert "������ɫ����
"colorscheme summerfruit256 "������ɫ����
"set guifont=Courier_New:h10:cANSI   "��������
"set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
"set guifont=Arial_monospaced_for_SAP:h10:cANSI

"������ʾ����
"�˵���
set guioptions+=m           " ���ز˵���
"������
set guioptions-=T           " ���ع�����
"״̬��
"set ruler "��ʾ״̬�����
set laststatus=2  "������ʾ״̬��
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"������
set showcmd       "�����������ʾ�������������Щ
set cmdheight=2   "�����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
"������
"set guioptions+=b "�ײ��� (ˮƽ) ���������Ǵ���
"set guioptions+=R "���д�ֱ�ָ�Ĵ��ڣ��ұߵĹ��������Ǵ���
"�������������
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white gui=underline guibg=NONE guifg=NONE
"�������������
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white gui=NONE guibg=grey guifg=NONE
"���ù����״
"set gcr=n-v-c:ver25-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor
"set gcr+=a:blinkon0

"һЩ��������
set history=3000 "��ʷ��¼��
set nu              "��ʾ�к�
set relativenumber  "��ʾ����к�
syntax on           "�﷨����

"��������
set magic "����ħ������
set ignorecase "�������Դ�Сд
set hlsearch   "�������ַ�����
set showmatch  "������ʾƥ�������
set incsearch  "���ÿ�������

"�ļ���������
set completeopt=longest,menu "���ļ����ͼ��, �������ſ��������ܲ�ȫ
set autoread "���õ��ļ����Ķ�ʱ�Զ�����
set confirm " �ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ��
set nobackup  "��ֹ������ʱ�ļ�
set noswapfile
set noeb "ȥ������������ʾ����
filetype on "����ļ�����
filetype plugin on "�����ļ����Ͳ��
filetype indent on "Ϊ�ض��ļ������������������

"ѡ������
set clipboard+=unnamed "���������  
"������buffer���κεط�ʹ����꣨����office���ڹ�����˫����궨λ��
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"�����ʽ����
"set noexpandtab "��Ҫ�ÿո�����Ʊ��
"set smarttab "���кͶο�ʼ��ʹ���Ʊ�
set tabstop=4   "����tab����ͬ�Ŀո񳤶�
set shiftwidth=4   "�Զ�������ʹ�õĿհ׳���ָʾ
set softtabstop=4  "����tab����������ǿո��tab�Ʊ���Ļ��
set backspace=2 "ʹ�ظ����backspace����������indent, eol, start��
set smartindent "ΪC�����ṩ�Զ�����
set autoindent  "�Զ�����
set cindent     "
set expandtab   "�ո��滻tab��
"autocmd FileType c,cpp,java set shiftwidth=4 | set expandtab

"=====================�������
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

"nmap <Leader>tb :TagbarToggle<CR>        "��ݼ�����
let g:tagbar_ctags_bin='ctags'            "ctags�����·��
let g:tagbar_width=30                    "���ڿ�ȵ�����
map <F3> :Tagbar<CR>

"let g:miniBufExplMapWindowNavVim = 1   
"let g:miniBufExplMapWindowNavArrows = 1   
"let g:miniBufExplMapCTabSwitchBufs = 1   
"let g:miniBufExplModSelTarget = 1  
"let g:miniBufExplMoreThanOne=0

"map <F11> :MBEbp<CR>
"map <F12> :MBEbn<CR>
