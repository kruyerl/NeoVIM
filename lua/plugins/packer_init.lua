---------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README

local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local packer = require 'packer'

-- Add packages
return packer.startup(function()
  use 'wbthomason/packer.nvim' -- packer can manage itself

-- Color schemes
use 'navarasu/onedark.nvim'
  -- use 'tanvirtin/monokai.nvim'
  -- use { 'rose-pine/neovim', as = 'rose-pine' }
use({"catppuccin/nvim", as = "catppuccin"})
  

  -- File explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- Autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

   -- Statusline
  use {
    'famiu/feline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- Bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}


  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Treesittr interface
      use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }


  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Dashboard (start screen)
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    --Styled Components
    use {'styled-components/vim-styled-components'}

    -- cmp
    use{'hrsh7th/nvim-cmp'}
    use{'hrsh7th/cmp-vsnip'}
    use{'hrsh7th/cmp-buffer'}
    use{ 'hrsh7th/cmp-path'}
    use{ 'hrsh7th/cmp-cmdline'}

    end)
