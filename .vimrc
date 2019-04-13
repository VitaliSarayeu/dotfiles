:set nu
set tabstop=4 shiftwidth=4 expandtab
filetype plugin indent on
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setl indentkeys-=<:>
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType rb setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 expandtab
colorscheme default
nnoremap G Gzz
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'davidhalter/jedi-vim'

Bundle 'hashivim/vim-vagrant'

Bundle 'vim-ruby/vim-ruby'

Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'airblade/vim-gitgutter'

Bundle 't9md/vim-chef'

Bundle 'chase/vim-ansible-yaml'

Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'greyblake/vim-preview'

call vundle#end()            " required
filetype plugin indent on    " required

let g:jedi#completions_command = "<C-c>"
let g:jedi#use_splits_not_buffers = "right"
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let mapleader=" "

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

nmap <F3> :ChefFindAnyVsplit <CR>
map <F2> :NERDTreeToggle<CR>

set updatetime=250
set autoread
set ruler
set noswapfile

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Copy to/from tmux
set clipboard=unnamed
