-- Automatically install packer
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/popup.nvim'
    use {
	'nvim-lualine/lualine.nvim',
	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'Mofiqul/dracula.nvim'
    use 'folke/tokyonight.nvim'
    use {
	'nvim-telescope/telescope.nvim',
	requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'

    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use 'williamboman/nvim-lsp-installer'
    use "lewis6991/gitsigns.nvim"
    use "lunarvim/darkplus.nvim"
    use "akinsho/bufferline.nvim"
    use "fatih/vim-go"
    use "joshdick/onedark.vim"
    use "windwp/nvim-autopairs"
    use "akinsho/toggleterm.nvim"
    use "phpactor/phpactor"
    use 'goolord/alpha-nvim'
    use "github/copilot.vim"
    use {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
    }

    if PACKER_BOOTSTRAP then
	require("packer").sync()
    end
end)

