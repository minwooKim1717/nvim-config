if has("syntax")
    syntax on
endif
filetype plugin on

call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'R-nvim/R.nvim'
Plug 'R-nvim/cmp-r'

Plug 'preservim/nerdtree'
Plug 'lervag/vimtex'

" Colorschems
" Plug 'frazrepo/vim-rainbow'
" Plug 'arcticicestudio/nord-vim'
" Plug 'folke/tokyonight.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'w0ng/vim-hybrid'
Plug 'junegunn/seoul256.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" follow latest release and install jsregexp.
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'} " Replace <CurrentMajor> by the latest released major (first number of latest release)
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" OLD STUFFS ... -------------------------------------------------
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

" Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
" Plug 'nvim-tree/nvim-web-devicons'

call plug#end()

" load lua settings for nvim-cmp in ~/lua/init.lua
lua require('init')


" Colorschemes
"
" let g:rainbow_active = 1
" colorscheme nord
" colorscheme tokyonight
" colorscheme tokyonight-night
" colorscheme tokyonight-storm
" colorscheme tokyonight-day
" colorscheme tokyonight-moon
" colorscheme nordfox
set background=dark
" colorscheme hybrid
"
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 233
colorscheme seoul256

" Airline
" let g:airline_theme='base16'  " alduin, 
" turn on the list of buffers
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"
" lua require('lualine').setup({ ... })

lua require('cmp_r').setup({})

" vim config ---
set cursorline
set ts=4
set shiftwidth=4
set expandtab
set autoindent
set cindent
set nohlsearch
set showmatch
set noswapfile
set nu
set relativenumber
set mouse=a
set ignorecase
set smartcase
set termguicolors
" set colorcolumn=100
set wrap
set linebreak
" set updatetime=300  " coc.nvim
" set signcolumn=yes  " coc.nvim
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set hidden
set scrolloff=8


let g:vimtex_view_general_viewer = 'SumatraPDF'
:nnoremap <F5> :VimtexView<CR>


" For LuaSnip ...
" ---------------------------------------------------------------------
" Setting LuaSnip config
" Enable autotriggered snippets and Use Tab (or some other key if you prefer) to trigger visual selection
lua require("luasnip").config.set_config({enable_autosnippets = true, store_selection_keys = "<Tab>",})
" Load all snippets from the nvim/LuaSnip directory at startup
lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'





