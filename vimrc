if has('python3')
endif

syntax on
    
set noerrorbells
set showcmd
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase 
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set rnu
set cul

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'sonph/onehalf', {'rtp': 'vim'}
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jacoborus/tender.vim'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'ayu-theme/ayu-vim'
Plug 'kyoz/purify', {'rtp': 'vim'}
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'
Plug 'drewtempelmeyer/palenight.vim'

" Añadir mis plugins 'surround' 'commentary' 'fugitive' 'replacewithregister' 'titlecase'
" 'sort-motion' 'system-copy' 'vim-textobj-user'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'inkarkat/vim-ReplaceWithRegister'
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'deathlyfrantic/vim-textobj-blanklines'
Plug 'glts/vim-textobj-comment'
" Instalar airline
Plug 'vim-airline/vim-airline'


call plug#end()


colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = "ñ"
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsizze=25

let g:ctrlp_use_cachung=0

nnoremap <C-a> k :w <CR> :! make run <CR>
inoremap <C-a> <Esc> k :w <CR> :! make run <CR>
imap jk <Esc>
nnoremap <leader>tn :tabnew<Space> 
nnoremap <leader>tl :tabnext<CR>
nnoremap <leader>th :tabprev<CR>
nnoremap <leader>tx :tabclose<CR>
nnoremap <leader>ss :w<CR>:source %<CR>
nnoremap <leader>wv :vs<CR>
nnoremap <leader>ws :sp<CR>
nnoremap <leader>wh :wincmd h<CR>
nnoremap <leader>wj :wincmd j<CR>
nnoremap <leader>wk :wincmd k<CR>
nnoremap <leader>wl :wincmd l<CR>
