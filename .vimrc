if !filereadable(expand('~/.vim/autoload/plug.vim'))
    ! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" colorscheme
Plug 'joshdick/onedark.vim'

" Status line
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

" Search
Plug 'osyo-manga/vim-anzu'

" Indent
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1

" NERDTree
Plug 'scrooloose/nerdtree'

" ShowUnuseSpace
Plug 'bronson/vim-trailing-whitespace'

" GitDiff
Plug 'airblade/vim-gitgutter'

call plug#end()

""""""""""""""""""""""""""""""
" キーマップ
""""""""""""""""""""""""""""""
" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
" エンコード設定
set encoding=utf-8
set fileencodings=iso-2022-jp,ecu-jp,sjis,utf-8

" 不要なファイルを作成しない
set nobackup
set noswapfile

" 編集中のファイルが変更されたら自動読み込み
set autoread

" バッファが編集中でもそのほかのファイルを開けるように
set hidden

" 入力中のコマンドを表示
set showcmd

" ビジュアル系
syntax enable
colorscheme onedark
set number
set cursorline
set whichwrap=h,l,b,s,<,>,[,]
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
set t_Co=256
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
highlight NonText ctermbg=None ctermfg=200 guibg=None guifg=None
highlight SpecialKey ctermbg=None ctermfg=200 guibg=None guifg=None

" 折り返し時に表示行単位での移動をできるようにする
nnoremap j gj
nnoremap k gk

" タブ系
set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

" 検索系
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
