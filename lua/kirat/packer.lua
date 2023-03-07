return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'nvim-tree/nvim-web-devicons'
  use "EdenEast/nightfox.nvim" -- color theme
  use 'windwp/nvim-ts-autotag'
  use "glepnir/lspsaga.nvim"
  use 'MunifTanjim/prettier.nvim'
  use 'hrsh7th/cmp-buffer'    -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'  -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'      -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/eslint.nvim'
  use 'onsails/lspkind-nvim' -- vscode-like pictograms

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

  use {
    'dinhhuy258/git.nvim'
  }

  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
end)
