function! vim_addon_whiteley#Activate()
  let addons = [
        \ "github:Lokaltog/vim-easymotion",
        \ "github:bling/vim-airline",
        \ "github:corntrace/bufexplorer",
        \ "github:elixir-lang/vim-elixir",
        \ "github:godlygeek/tabular",
        \ "github:helino/vim-json",
        \ "github:jistr/vim-nerdtree-tabs",
        \ "github:jnwhiteh/vim-golang",
        \ "github:mattn/gist-vim",
        \ "github:noahfrederick/vim-hemisu",
        \ "github:rking/ag.vim",
        \ "github:scrooloose/nerdtree",
        \ "github:scrooloose/syntastic",
        \ "github:tomtom/tcomment_vim",
        \ "github:tpope/vim-eunuch",
        \ "github:tpope/vim-fugitive",
        \ "github:tpope/vim-rails",
        \ "github:tpope/vim-sensible",
        \ "github:tpope/vim-unimpaired",
        \ "github:vim-ruby/vim-ruby",
        \ "hg:https://bitbucket.org/ns9tks/vim-fuzzyfinder",
        \ "hg:https://bitbucket.org/ns9tks/vim-l9",
        \ ]

  call vam#ActivateAddons(addons)

  set backspace=indent,eol,start

  set background=dark
  colorscheme hemisu

  if has('gui_running')
    set antialias
    set autoread
    set gcr=a:blinkwait0
    if os == 'mac'
      set guifont=Source\ Code\ Pro\ for\ Powerline:h12
    elseif os == 'unix'
      set guifont=Source\ Code\ Pro\ 10
    endif
    set visualbell
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
    autocmd BufEnter * cd %:p:h
  endif
  let g:airline_powerline_fonts = 1

  let g:mapleader = ","

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
