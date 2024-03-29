"	source $VIMRUNTIME/vimrc_example.vim
"	source $VIMRUNTIME/mswin.vim
set langmenu=none                     "Menu Language -- zh_CN.GBK
"language message zh_CN.UTF-8
set history=100     " keep 50 lines of command line history
"========================================================================"
"set encoding=prc 
set encoding=utf-8  
"set encoding=cp936 
"set clipboard=unnamed
"set termencoding=utf-8
"set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1    " 如果你要打开的文件编码不在此列，那就添加进去
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,,big5,euc-jp,euc-kr,latin1    " 如果你要打开的文件编码不在此列，那就添加进去
set fileformats=unix,dos
set ambiwidth=double	"让一些中文字符显示完整。如“”①②→等
"colorscheme desert              "set colo=morning 
" cloudy eclipse emacs evening kate koehler LightDefault native nedit peachpuff professional rainbow_fruit scite slate spring torte turbo winter xemacs zellner zenburn
"	set ruler
"	set ch=2			" Make command line two lines high
	set linebreak       " Break lines at nice places
	set tabstop=4 		" 设置制表符宽度为4 " EAG policy/rule,Default(set ts=8) 
"   set softtabstop=4	" 设置（软）制表符宽度为4
"   set shiftwidth=4 	" 设置缩进的空格数为4
"   set cindent			" C 语言的语法，自动地调整缩进的长度
	set autoindent		" 自动缩进（自动对齐）
	set smartindent
"	set nocursorline 	""是否高亮当前行
"	set tw=78			"A longer line will be broken after white space to get this width
	set display=lastline  " 长行不能完全显示时显示当前屏幕能显示的部分。默认值为空，长行不能完全显示时显示 @。


"behave mswin
behave xterm
	set nu!
	set wrap
	set ignorecase smartcase
	set hlsearch 		"Highlight search things
	set incsearch  		"Make search act like search in modern browsers
"	syntax on

"Mouse
"	set mousehide		" Hide the mouse when typing text
"========================================================================"
"The mappings can be suppressed with the following line in the file .vimrc :
  filetype plugin on
  "let g:Perl_NoKeyMappings = 1
"  MultipleSearch
  let MultipleSearchMaxColors = 9
"  Calendar 				   " Refer to the 'calendar' plugin
  let g:calendar_focus_today = 1
" let g:calendar_navi = 'both'		   " 'top/bottom/both'
" let g:calendar_weeknm = 1 " WK01
"========================================================================"
" Uncomment the following to have Vim jump to the last position when reopening a file
" 打开文件时，按照 viminfo 保存的上次关闭时的光标位置重新设置光标
if has("autocmd")
 au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
endif
"设置netrw缺省的列表风格: = 0: 瘦列表 (每个文件一行) = 1: 长列表 (每个文件一行，带有时间信息和文件 长度) = 2: 宽列表 (多个文件，分列显示) = 3: 树型风格列表
  let g:netrw_liststyle= 1
"========================================================================"
"  Tab hotkey
map  <F2> :tabnew.<CR>
map  <F3> :set nu!<CR>
map  <F4> :tabclose<CR>
map  <F8> :tabprevious<CR>
map  <F9> :tabnext<CR>
map <F12> :set cursorline!<CR>
" Insert current date or time
map  <F5> "=strftime("%d-%m-%Y")<CR>P 	" Sanmina-SCI Corp Oracle 
"========================================================================"
" Insert current date or time
" map  <F5> "=strftime("%d-%b-%Y")<CR>P " %b -- 中文 " Sanmina-SCI Corp Oracle 
""" Refer to http://vim.wikia.com/index.php?title=Insert_current_date_or_time&diff=26184&oldid=prea
" :nnoremap <F5> "=strftime("%c")<CR>P
" :inoremap <F5> <C-R>=strftime("%c")<CR>
" Some strftime() format string examples "
""""""""""""""""""""""""""""""""""""""""""
" Format String              Example output
" -------------              --------------
" %c                         Thu 27 Sep 2007 07:37:42 AM EDT (depends on locale)
" %a %d %b %Y                Thu 27 Sep 2007
" %b %d, %Y                  Sep 27, 2007
" %d/%m/%y %H:%M:%S          27/09/07 07:36:32
" %H:%M:%S                   07:36:44
" %T                         07:38:09
" %m/%d/%y                   09/27/07
" %y%m%d                     070927
" %x %X (%Z)                 09/27/2007 08:00:59 AM (EDT)
" 
" RFC822 format:
" %a, %d %b %Y %H:%M:%S %z   Wed, 29 Aug 2007 02:37:15 -0400
" 
" ISO8601/W3C format (http://www.w3.org/TR/NOTE-datetime):
" %FT%T%z                    2007-08-29T02:37:13-0400

"========================================================================"
"add "Preview" command to _vimrc
"if you are using windows, you will need to adjust your PATH to include the path to your browser
"  command Preview :!c:\progra~1\mozill~1\firefox %<CR>
"========================================================================"
"  Default directory
"	cd E:/WK
