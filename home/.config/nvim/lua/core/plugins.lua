local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- package manager
  use {'catppuccin/nvim', as = "catppuccin"} -- theme
  use 'nvim-tree/nvim-tree.lua' -- directory browser
  use 'nvim-tree/nvim-web-devicons' -- icons
  use 'nvim-lualine/lualine.nvim' -- pretty line
  use 'nvim-treesitter/nvim-treesitter' -- syntax
  use 'ms-jpq/coq_nvim' -- completion
  use 'ms-jpq/coq.artifacts' -- completion 2
  use 'folke/trouble.nvim' -- diagnostics
  use 'windwp/nvim-autopairs' -- autopairs :D
  use 'akinsho/bufferline.nvim' -- tabs

  use { -- fuzzy finder
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use { -- lsps
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
