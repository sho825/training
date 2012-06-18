set fileencodings=utf8,iso-2022-jp,cp932,euc-jp
set laststatus=2
set statusline=%f\ [%{&fenc==''?&enc:&fenc}][%{&ff}]%=%8l:%c%8P
set number
set tabstop=4
set autoindent
set showmatch
set ignorecase
set incsearch
set t_Co=256
set list
set listchars=eol:$,tab:>\,extends:<
set shiftwidth=4

#入力モード時にカラー変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

#perlテンプレ
autocmd BufNewFile *.pl 0r ~/.vim/template/perl

#htmlテンプレ
autocmd BufNewFile *.html 0r ~/.vim/template/html

#カラースキーム
let g:molokai_original = 1
colorscheme molokai


syntax on


au BufReadPost,BufNewFile *.t :setl filetype=per

#デバッグ
nnoremap <C-c> :! perl -c %<Enter>							#perl -c
nnoremap <silent> ,pe :<C-u>! perl %<Enter> 				#escキー , p e
