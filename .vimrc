" デフォルトの文字コードの設定
set encoding=utf-8
set fileencodings=iso-2022-jp,ecu-jp,sjis,utf-8

""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" ファイルをtree表示してくれる
Plug 'scrooloose/nerdtree'
" インデントの可視化
Plug 'Yggdroot/indentLine'
let g:indentLine_color_term = 239
" 行末の半角スペースを可視化
Plug 'bronson/vim-trailing-whitespace'

call plug#end()

""""""""""""""""""""""""""""""
" キーマップ
""""""""""""""""""""""""""""""
" NERDTreeのショートカット
nnoremap <silent><C-e> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっていない)
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" 入力中のコマンドを表示する
set showcmd
" 小文字のみで検索したときに大文字小文字を無視する
set smartcase
" 検索結果をハイライト表示する
set hlsearch
" 暗い背景色に合わせた配色にする
set background=dark
" タブ入力を複数の空白入力に置き換える
set expandtab
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch
" 保存されていないファイルがあるときでも別のファイルを開けるようにする
set hidden
" 不可視文字を表示する
set list
" タブと行の続きを可視化する
set listchars=tab:>\ ,extends:<
" 行番号を表示する
set number
" 対応する括弧やブレースを表示する
set showmatch
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" タブ文字の表示幅
set tabstop=2
" Vimが挿入するインデントの幅
set shiftwidth=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" 構文毎に文字色を変化させる
syntax on
" カラースキーマの指定
colorscheme molokai
" 行番号の色
highlight LineNr ctermfg=darkyellow
" textwidthでフォーマットさせたくない
set formatoptions=q
" クラッシュ防止（http://superuser.com/questions/810622/vim-crashes-freezes-on-specific-files-mac-osx-mavericks）
set synmaxcol=200

" filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype on

