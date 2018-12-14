set nocompatible
filetype off

syntax on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'fenetikm/falcon'
Plugin 'chemzqm/vim-jsx-improve'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'elzr/vim-json'
Plugin 'w0rp/ale'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'flazz/vim-colorschemes'
Plugin 'felixhummel/setcolors.vim'
Plugin 'mhartington/oceanic-next'
call vundle#end()

filetype plugin indent on

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set viminfo='100,<500,s10,h
set backspace=2
set colorcolumn=80
set hlsearch
set ruler
colorscheme OceanicNext
highlight ColorColumn ctermbg=237 ctermfg=white
highlight Normal ctermfg=253 ctermbg=black

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2

let g:js_context_colors_enabled = 0
let g:js_context_colors_colorize_comments = 1
let g:js_context_colors_highlight_function_names = 1
let g:js_context_colors_block_scope = 1
let g:js_context_colors_jsx = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_sass_checkers = ['sass_lint']
let g:syntastic_scss_checkers = ['sass_lint']

let g:syntastic_javascript_checkers = ["eslint"]

au FileType java setl sw=4 sts=4 et

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

  autocmd BufNewFile,BufRead *.eslintrc set syntax=json
  autocmd BufNewFile,BufRead *.babelrc set syntax=json
endif
