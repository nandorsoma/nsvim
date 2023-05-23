

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
---------------------------------------
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
---------------------------------------
  use({
      'folke/tokyonight.nvim',
      as = 'tokyonight',
      config = function()
          vim.cmd('colorscheme tokyonight')
      end 
  })
---------------------------------------
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
---------------------------------------
  -- plenary needed for harpoon
  -- but it was installed by telescope
  -- use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'
---------------------------------------
  use 'mbbill/undotree'
---------------------------------------
  use 'tpope/vim-fugitive'
---------------------------------------
  use {
	  'phaazon/hop.nvim',
	  branch = 'v2', -- optional but strongly recommended
	  config = function()
		  -- you can configure Hop the way you like here; see :h hop-config
		  require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
	  end
  }
---------------------------------------
  --https://github.com/hrsh7th/nvim-cmp
  -- LSP
  use 'williamboman/mason.nvim'
--  use {
--      "williamboman/mason.nvim",
--      run = ":MasonUpdate" -- :MasonUpdate updates registry contents
--  }
  use 'mfussenegger/nvim-jdtls'

  -- Autocompletion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- snippet engine is needed for completion to work
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
---------------------------------------

end)
