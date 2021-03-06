"syntax enable
set termguicolors " super important / themes background

" set leader key
let g:mapleader = "\<Space>"

let g:onedark_termcolors=256

set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments

set path+=**
set relativenumber
set hlsearch
set cursorline
set tabstop=4

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


call plug#begin('~/.local/share/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'} " auto complete
Plug 'vim-airline/vim-airline' " bar
Plug 'jiangmiao/auto-pairs' " close brackets 
Plug 'scrooloose/nerdtree' "  file manager
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'norcalli/nvim-colorizer.lua' " color preview with hexa 
" Plug 'vim-airline/vim-airline-themes' " bar themes
"Plug 'morhetz/gruvbox'
"Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
call plug#end()
lua require'colorizer'.setup()

source $HOME/.config/nvim/themes/onedark.vim
"colorscheme dracula
