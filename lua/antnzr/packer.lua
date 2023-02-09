-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use('kdheepak/lazygit.nvim')

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = {{'nvim-lua/plenary.nvim'}, { 'kdheepak/lazygit.nvim' }},
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  }

  use({
    'Mofiqul/dracula.nvim',
    as = 'dracula',
    config = function()
      require("antnzr.dracula")
      vim.cmd('colorscheme dracula')
    end
  })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use('nvim-lua/plenary.nvim')

  use('ThePrimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use({
    'akinsho/toggleterm.nvim',
    config = [[require('antnzr.toggleterm')]],
  })

  use({
    'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup {} end
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }

end)

