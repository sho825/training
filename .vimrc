set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent off     " required!

if has('vim_starting')
				set runtimepath+=~/.vim/bundle/neobundle.vim/
				call neobundle#rc(expand('~/.vim/bundle/'))
endif
"install plugin name"
NeoBundle 'Shougo/neocomplcache-snippets-complete'

filetype plugin indent on

set fileencodings=utf8,iso-2022-jp,cp932,euc-jp
set laststatus=2
set statusline=%f\ [%{&fenc==''?&enc:&fenc}][%{&ff}]%=%8l:%c%8P
set number
set tabstop=4
set shiftwidth=4
set softtabstop=0
set autoindent
set showmatch
set ignorecase
set incsearch
set t_Co=256
let g:molokai_original=1
colorscheme molokai

syntax on

au BufReadPost,BufNewFile *.t :setl filetype=per


"Disable AutoComplPop.
	let g:acp_enableAtStartup = 0 
	" Use neocomplcache.
	let g:neocomplcache_enable_at_startup = 1
	" Use smartcase.
	let g:neocomplcache_enable_smart_case = 1
	" Use camel case completion.
	let g:neocomplcache_enable_camel_case_completion = 1
	" Use underbar completion.
	let g:neocomplcache_enable_underbar_completion = 1
	" Set minimum syntax keyword length.
	let g:neocomplcache_min_syntax_length = 3
	let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
	
	" Define dictionary.
	let g:neocomplcache_dictionary_filetype_lists = {
	    \ 'default' : '',
