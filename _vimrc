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

"=====================��������
"ӳ��ȫѡ+���� ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
"ѡ��״̬�� Ctrl+c ����
vmap <C-c> "+y    

"�Զ���ȫ
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

"�½�.c,.h,.sh,.java�ļ���<F4>�����ļ�ͷ
map <F4> :call TitleDet()<cr>
function AddTitle()
    call append( 0, "/**")
    call append( 1, " * COPYRIGHT NOTICE")
    call append( 2, " * Copyright (c) 2015 All rights reserved")
    call append( 3, " * ")
    call append( 4, " * @Author       :zhong")
    call append( 5, " * @File         :".expand("%:p:h")."\\".expand("%:t"))
    call append( 6, " * @Date         :".strftime("%Y/%m/%d %H:%M"))
    call append( 7, " * @Description  :")
    call append( 8, " **/")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endfunction
"��������޸�ʱ����ļ���
function UpdateTitle()
    normal m'
    execute '/ * @Date      /s@:.*$@\=strftime(":%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/ * @File      /s@:.*$@\=":".expand("%:p:h")."\\".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copyright." | echohl None
endfunction
"�ж�ǰ2�д������棬�Ƿ���COPYRIGHT NOTICE������ʣ�
"���û�еĻ�������û����ӹ�������Ϣ����Ҫ����ӣ�
"����еĻ�����ôֻ��Ҫ���¼���
function TitleDet()
    let n = 2
    "Ĭ��Ϊ���
    let line = getline(n)
    let str = ' * COPYRIGHT NOTICE'
    if line == str
        call UpdateTitle()
        return
    endif
    call AddTitle()
endfunction

"C��C++ ��<F5>��������
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
	exec "!g++ % -o %<"
	exec "! ./%<"
    elseif &filetype == 'cpp'
	exec "!g++ % -o %<"
	exec "! ./%<"
    elseif &filetype == 'java' 
	exec "!javac %" 
	exec "!java %<"
    elseif &filetype == 'sh'
	:!./%
    endif
endfunc

"C,C++ ��<F8>����
map <F8> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc

"��<F6>�����ʽ�Ż���
"ʹ����astyle
map <F6> :call FormartSrc()<CR><CR>
"����FormartSrc()
func FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
	exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
	exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
	exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
	exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
	exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
	exec "!astyle --style=gnu --suffix=none %"
    else
	exec "normal gg=G"
	return
    endif
    exec "e! %"
endfunc
