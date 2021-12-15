" NeoVim config

" show line numbers
set number
" set tab width
set shiftwidth=2
" something
set termguicolors
" needed for compe
set completeopt=menu,menuone,noselect
" popupmenu transparency
set pumblend=10
" hybrid line numbers
set number relativenumber
" no swap file
set noswapfile
" dont wrap lines
set nowrap
" highlight current line
set cursorline
" dont show mode under statusline
set noshowmode
" change buffer without saving
set hidden

" PLUGINS

lua << EOF

  local user = require("user")
  user.setup({ parallel = true })
  local use = user.use

  use "neovim/nvim-lspconfig"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/nvim-cmp"
  use "nvim-lualine/lualine.nvim"
  use "kdheepak/tabline.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "kevinhwang91/rnvimr"
  use "tpope/vim-commentary"
  use "RRethy/nvim-base16"

  user.flush()

EOF

" RNVIMR
  let g:rnvimr_enable_ex = 1
  let g:rnvimr_enable_picker = 1
  let g:rnvimr_draw_border = 1
  highlight link RnvimrNormal CursorLine
  nnoremap <silent> <A-t> :RnvimrToggle<CR>

" TOGGLE BOOL
  noremap <C-g> :ToggleBool<CR>

" LSP AND CMP
  lua require('completion')
  highlight Pmenu guibg=#111122

" TABS
  nnoremap <A-,> :bp<CR>
  nnoremap <A-.> :bn<CR>
  nnoremap <A-n> :tabnew<CR>

" ColorScheme
colorscheme base16-tomorrow-night
  
" LUALINE
lua require('tabline').setup { enable = false, options = { show_filename_only = true } }
  lua require('lualineconfig')


  highlight Comment          guifg=#318fcf ctermfg=4    guibg=none    ctermbg=none  cterm=italic
  highlight LspDiagnosticsSignError guibg=#282a2e
  highlight LspDiagnosticsSignWarning guibg=#282a2e
  highlight LspDiagnosticsSignInformation guibg=#282a2e
  highlight LspDiagnosticsSignHint guibg=#282a2e
