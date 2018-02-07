set nocompatible
filetype off
set nu
syntax on
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

set background=dark
set pastetoggle=<F2>
let mapleader = ","
nnoremap <leader>p :CtrlP<CR>
set guifont=Menlo\ Regular:h18
" set lines=35 columns=150
set colorcolumn=90
set ignorecase
set hidden
set history=100
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set clipboard=unnamed
autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
set incsearch
set smartcase
set cuc cul"
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W
set showmatch

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold"

set rtp+=~/.vim/bundle/Vundle.vim
set tags=./tags;
call vundle#begin()
Plugin 'tpope/vim-endwise'
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'mileszs/apidock.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/JSON.vim'
Plugin 'slim-template/vim-slim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
" Snippets for our use :)
Plugin 'garbas/vim-snipmate'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'janko-m/vim-test'
Plugin 'mhartington/oceanic-next'
call vundle#end()
filetype plugin indent on

" NerdTree setup
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.git/']

augroup myfiletypes
  autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END

colorscheme OceanicNext
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='oceanicnext'
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
