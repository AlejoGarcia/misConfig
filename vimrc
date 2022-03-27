if has('python3')
endif

syntax on

" Evitamos ser compatibles con VI para usar al máximo VIM
set nocompatible

" Replicando fuzzy 
set path+=**

" Busqueda con tabulador mostrada en menú
set wildmenu

" Desactiva la campana de aviso cuando se hace un movimiento inválido
set noerrorbells

" Muestra el comando que esta siendo introducido en la barra inferior
set showcmd

" Establece el numero de espacios a los que equivale el tabulador
set tabstop=4 softtabstop=4
set shiftwidth=4

" Cambia los tabuladores por el numero de espacios equivalente (asi no hay
" tabulaciones en el documento
set expandtab

" Mantiene el indentado actual 
set smartindent

" Muestra el numero de linea
set nu

" Evita que se produzca el doblado artificial de lineas al escribir llegando hasta el
" final de la línea
set nowrap

" Modifica las busquedas entre ignorar o no las mayúsculas de forma
" inteligente
set smartcase 

" Evita que se cree un archivo temporal con los cambios (asi no hay archivos
" extraños en el directorio
set noswapfile

" Evita crear backups de los archivos abiertos
set nobackup

" Genera una carpeta donde se guardarán los cambios echos en cada documento
set undodir=~/.vim/undodir

" Activa las opciones para guardar los cambios dentro de una carpeta 
set undofile

" Ilumina la busqueda a medida que se introduce
set incsearch

" Establece el fondo transparente
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE

" Muestra los numeros relativos de fila
set rnu

" Remarca la linea actual en la que se encuentra el cursor
set cul

" Marca la columna numero 80 (la que tradicionalmente es la última)
set colorcolumn=80

" Establecemos un numero de lineas obligatorias en pantalla por encima y por
" debajo del cursor par ano tener que movernos siempre en la última
set scrolloff=7

" Selecciona un color suave para la columna 80 en lugar del rojo fuerte normal
" highlight ColorColumn ctermbg=0 guibg=lightgrey

" Configuramos vim-polyglot con la configuración basica
let g:polyglot_disabled = ['sensible']

" Iniciamos el manejador de plugins Plug
call plug#begin('~/.vim/plugged')

" Instalacion de temas de color
" Esquema de color onehalf
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'

" Instalacion de temas de color
" Esquema de color onehalf
Plug 'sonph/onehalf', {'rtp': 'vim'}

" Esquema de color gruvox
Plug 'morhetz/gruvbox'

" Esquema de color base16
Plug 'chriskempson/base16-vim'

" Esquema de color solarized
Plug 'altercation/vim-colors-solarized'

" Esquema de color papercolor
Plug 'NLKNguyen/papercolor-theme'

" Esquema de color tender
Plug 'jacoborus/tender.vim'

" Esquema de color vim-one
Plug 'rakr/vim-one'

" Esquema de color vim-one
Plug 'mhartington/oceanic-next'

" Esquema de color vim-one
Plug 'ayu-theme/ayu-vim'

" Esquema de color vim-one
Plug 'kyoz/purify', {'rtp': 'vim'}

" Esquema de color vim-one
Plug 'dracula/vim', {'as': 'dracula'}

" Esquema de color vim-atom-dark
Plug 'gosukiwi/vim-atom-dark'

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
" Plug 'mbbill/undotree'
Plug 'drewtempelmeyer/palenight.vim'

" Poliglot para el remarcado de distintos lenguajes
Plug 'sheerun/vim-polyglot'

" Instalamos vim hard mode para practicar y forzar movimientos inteligentes
Plug 'dusans/vim-hardmode'
" Activamos hardmode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
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
" Instalar
Plug 'vim-airline/vim-airline'


call plug#end()

colorscheme onehalfdark
" colorscheme onehalfdark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = "ñ"
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsizze=25

let g:ctrlp_use_cachung=0

" Mis keymaps (auto explicativos)
nnoremap <C-a> k :w <CR> :! make run <CR>
inoremap <C-a> <Esc> k :w <CR> :! make run <CR>
imap jk <Esc>
nnoremap <leader>tn :tabnew<Space> 
nnoremap <leader>tl :tabnext<CR>
nnoremap <leader>th :tabprev<CR>
nnoremap <leader>tx :tabclose<CR>
nnoremap <leader>ss :w<CR>:source %<CR>
nnoremap <leader>ff :Files ~<CR>
nnoremap <leader>bb :Buffers<CR>
nnoremap <C-p>      :Files<CR>
nnoremap <leader>sh :call EasyMode()<CR>
nnoremap <leader>sH :call HardMode()<CR>
nnoremap <leader>wv :vs<CR>
nnoremap <leader>ws :sp<CR>
nnoremap <leader>wh :wincmd h<CR>
nnoremap <leader>wj :wincmd j<CR>
nnoremap <leader>wk :wincmd k<CR>
nnoremap <leader>wl :wincmd l<CR>
nnoremap <leader>wH :wincmd H<CR>
nnoremap <leader>wJ :wincmd J<CR>
nnoremap <leader>wK :wincmd K<CR>
nnoremap <leader>wL :wincmd L<CR>
