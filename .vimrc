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

" NERDTree
Plug 'scrooloose/nerdtree'

" ShowUnuseSpace
Plug 'bronson/vim-trailing-whitespace'

" GitDiff
Plug 'airblade/vim-gitgutter'

" Quote auto close
Plug 'cohama/lexima.vim'

" HTML
Plug 'mattn/emmet-vim'

" Auto insert close-tag
Plug 'alvan/vim-closetag'

" Autocompletion
Plug 'Valloric/YouCompleteMe'

" Fuzzy search
Plug 'ctrlpvim/ctrlp.vim'

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

" アップデート
set updatetime=300

" コマンドモードの補完
set wildmenu

" 保存するコマンド履歴の数
set history=5000

" YCMの設定
set splitbelow

" バックスペースが無効になってしまう現象回避
set backspace=indent,eol,start

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
set listchars=tab:»-,space:･,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" 折り返し時に表示行単位での移動をできるようにする
nnoremap j gj
nnoremap k gk

" タブを開くときのキーマップ
nnoremap sT :tabnew
nnoremap sn gt
nnoremap sp gT

" タブ系
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

" 宣言
function! AbsolutePath()
  let a = substitute(expand('%:p'), $HOME, '~', '')
  if a == ""
    return '🗒'
  elseif strlen(a) > 40
    return a[strlen(a)-40:]
  else
    return a
  endif
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:indent_guides_enable_on_vim_startup=1
let g:lightline = {
\   'active': {
\     'left': [
\       ['mode', 'paste'],
\       ['fugitive', 'readonly', 'relativepath', 'modified']
\     ]
\   },
\   'component_function': {
\     'absolutepath': 'AbsolutePath'
\   }
\ }
let g:user_emmet_settings = {
\  'variables' : {
\    'lang' : "ja"
\  },
\  'html' : {
\    'indentation' : '  ',
\    'snippets' : {
\      'html:5': "<!DOCTYPE html>\n"
\        ."<html lang=\"${lang}\">\n"
\        ."<head>\n"
\        ."\t<meta charset=\"${charset}\">\n"
\        ."\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
\        ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
\        ."\t<title></title>\n"
\        ."</head>\n"
\        ."<body>\n\t${child}|\n</body>\n"
\        ."</html>",
\    }
\  }
\}
" YCM
let g:ycm_global_ycm_extra_conf = '${HOME}/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_insertion = 1
