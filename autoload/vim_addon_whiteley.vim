function! vim_addon_whiteley#Activate()
  let addons = [
        \ "github:bling/vim-airline",
        \ "github:noahfrederick/vim-hemisu",
        \ "github:scrooloose/syntastic",
        \ "github:tpope/vim-fugitive",
        \ ]

  call vam#ActivateAddons(addons)

  set background=dark
  colorscheme hemisu

  let mapleader = ","

  set number
  set ruler

  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab

  set smartindent
  set autoindent
  set foldenable
  set scrolloff=4

  set laststatus=2
  set linespace=3

  set wrap
  set textwidth=79
  set formatoptions=qrn1

  set hlsearch
  set ignorecase
  set incsearch
  set smartcase

  map <leader>c <c-_><c-_>
  map <leader>q gqip
  noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>
endfunction
