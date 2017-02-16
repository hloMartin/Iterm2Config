call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
call plug#end()


"onfiguration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

syntax on  "自动语法高亮

"用浅色高亮当前行
"autocmd InsertLeave * se nocul
"autocmd InsertEnter * se cul

set smartindent "智能对齐

set autoindent "自动对齐

set confirm "在处理为保存或只读文件是，弹出确认

set tabstop=4 "tab 键宽为4

"统一缩进为4
set softtabstop=4 
set shiftwidth=4

set number "显示行号

set history=100 "设置历史记录数

"搜索逐字符高亮
set hlsearch
set incsearch

set showmatch "高亮显示对应的括号

set autowrite "切换buffer时，自动保存当前文件

set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936

"==================自定义的键映射======================

"括号自动生成
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

"单键<F7>控制syntax on/off。原因是有时候颜色太多会妨碍阅读。
map <F7> :if exists("syntax_on") <BAR>
\    syntax off <BAR><CR>
\  else <BAR>
\syntax enable <BAR>
\  endif

" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
