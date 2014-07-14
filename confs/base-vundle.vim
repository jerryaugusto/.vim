""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Vundle Header
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" Required for Vundle
set nocompatible " No VI compatibility
filetype off

"Add Vundle to path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Set vundle default protocol
let g:vundle_default_git_proto = 'http'
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 My Bundles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{
" GIT Integration
Plugin 'fugitive.vim'
" Asynchronous calls
Plugin 'tpope/vim-dispatch'
" Nice status line
Plugin 'bling/vim-airline'
" Smooth scrolling
Plugin 'terryma/vim-smooth-scroll'
" Surrounding tags
Plugin 'surround.vim' " TODO:  Customize surround
" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Visual marks and some nice mappings
Plugin 'kshenoy/vim-signature'

" TODO: Retest every plugin :(

" Vundle closing
call vundle#end()
filetype plugin indent on
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Bundles Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{
" Airline
let g:airline_symbols = {}
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:airline_symbols.paste = 'ρ'
let g:airline#extensions#branch#enabled=1
let g:airline_mode_map = {'__' : '-', 'n'  : 'N', 'i'  : 'I', 'R'  : 'R',
    \ 'c'  : 'C', 'v'  : 'V', 'V'  : 'V', '' : 'V', 's'  : 'S', 'S'  : 'S',
    \ '' : 'S', }
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'

" Smooth scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"}}}