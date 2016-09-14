syntax on
set number
colorscheme desert

" move vertically by visual line
nnoremap j gj
nnoremap k gk

set expandtab 
set tabstop=2
set shiftwidth=2 
set softtabstop=2
set autoindent 
set smartindent 

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" deinvim setting
" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('$HOME/src/github.com/Shougo')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイルを用意しておく
  let g:rc_dir    = expand("~/.config/nvim/")
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif
