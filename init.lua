--[[
Neoviminit file
Version: 0.1.0 - 2022/04/06
Maintainer: kruyerl
Website: https://github.com/kruyerl
--]]

-- Import Core modules
require('core/settings')
require('core/keymaps')
require('core/colors')

-- Import Packer for Plugin Management
require('plugins/packer_init')

-- Import Plugin Configs
require('plugins/statusline')
require('plugins/bufferline')
require('plugins/nvim_tree')
require('plugins/nvim_lspconfig')
require('plugins/alpha_nvim')
require('plugins/indent_blankline')
require('plugins/treesitter')
require('./plugins/nvim_cmp') 

