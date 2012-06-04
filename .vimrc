set fileencodings=utf8,iso-2022-jp,cp932,euc-jp
set laststatus=2
set statusline=%f\ [%{&fenc==''?&enc:&fenc}][%{&ff}]%=%8l:%c%8P
set number
set tabstop=4
set autoindent
set showmatch
set ignorecase
syntax on
au BufReadPost,BufNewFile *.t :setl filetype=per
autocmd BufNewFile *.pl 0r ~/.vim/template/perl
autocmd BufNewFile *.html 0r ~/.vim/template/html
let g:molokai_original = 1
colorscheme molokai
set t_Co=256
