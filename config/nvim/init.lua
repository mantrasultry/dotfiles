require('plugins')
require('options')
require('keybindings')
vim.g.tokyonight_style = "night"
vim.cmd('colorscheme tokyonight')
require('treesitter-config')
require('lualine-config')
require('bufferline-config')
require('blankline-config')
require('nvim-tree-config')
require('autopairs-config')
require('whichkey-config')
require('telescope-config')
require('lsp')
require('comment-config')
require('colorizer-config')
require('toggleterm-config')
require('luasnip-config')
