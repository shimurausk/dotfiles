
set nocompatible
" 一旦ファイルタイプ関連を無効化する
 filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'

"file open を便利にする
NeoBundle 'Shougo/unite.vim'
"Unite.vimで最近使ったfileを表示
NeoBundle 'Shougo/neomru.vim'

" ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'

" Gitを便利に使う
NeoBundle 'tpope/vim-fugitive'

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}

" Rails向けのコマンドを提供する
NeoBundle 'tpope/vim-rails'
" Ruby向けにendを自動挿入してくれる
"Bundle 'tpope/vim-endwise'

NeoBundle 'Shougo/neocomplcache'

" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'
" インデントに色付き
NeoBundle 'nathanaelkane/vim-indent-guides'
" vimを立ちあげた時に、自動的にvin-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1













NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

"""""""""""""""""""
"Unite.vimの設定
""""""""""""""""""
" 入力モードで開始する
let g:unite_enable_start_insert=1
" " バッファ一覧
noremap <C-P> :Unite buffer<CR>
" " ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" " 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" " sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" " ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" " ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
"自動的に閉じカッコ
""""""""""""""""""""""""""""""
map { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""
" タグファイルの指定(でもタグジャンプは使ったことがない)
" set tags=~/.tags
" "
" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
" set noswapfile
" " カーソルが何行目の何列目に置かれているかを表示する
" set ruler
" " コマンドラインに使われる画面上の行数
" set cmdheight=2
" " エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
" set laststatus=2
" "
" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっていない)
" set statusline=%<%f\
" %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" " ステータス行に現在のgitブランチを表示する
" set statusline+=%{fugitive#statusline()}
" " ウインドウのタイトルバーにファイルのパス情報等を表示する
" set title
" " コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
" set wildmenu
" " 入力中のコマンドを表示する
" set showcmd
" " バックアップディレクトリの指定(でもバックアップは使ってない)
" set backupdir=$HOME/.vimbackup
" "
" バッファで開いているファイルのディレクトリでエクスクローラを開始する(でもエクスプローラって使ってない)
" set browsedir=buffer
" " 小文字のみで検索したときに大文字小文字を無視する
" set smartcase
" " 検索結果をハイライト表示する
 set hlsearch
" " 暗い背景色に合わせた配色にする
" set background=dark
" " タブ入力を複数の空白入力に置き換える
" set expandtab
" " 検索ワードの最初の文字を入力した時点で検索を開始する
 set incsearch
" " 保存されていないファイルがあるときでも別のファイルを開けるようにする
" set hidden
" " 不可視文字を表示する
" set list
" " タブと行の続きを可視化する
" set listchars=tab:>\ ,extends:<
" " 行番号を表示する
 set number
" " 対応する括弧やブレースを表示する
" set showmatch
" " 改行時に前の行のインデントを継続する
 set autoindent
" " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
 set smartindent
" " タブ文字の表示幅
 set tabstop=2
" " Vimが挿入するインデントの幅
 set shiftwidth=2
" " 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
 set smarttab
" " カーソルを行頭、行末で止まらないようにする
 set whichwrap=b,s,h,l,<,>,[,]
" " 構文毎に文字色を変化させる
 syntax on
" " カラースキーマの指定
 colorscheme default
" " 行番号の色
" highlight LineNr ctermfg=darkyellow

filetype plugin indent on     " required!
filetype indent on
syntax on
