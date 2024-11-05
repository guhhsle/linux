-- Install lazy.nvim if not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Use lazy.nvim to manage plugins
require("lazy").setup({
  -- Git repositories
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-treesitter/playground" },

  -- LSP configuration
  { "neovim/nvim-lspconfig" },
	{ "sigmasd/deno-nvim" },
  { "williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"clangd",
			},
		},
	},
  { "williamboman/mason-lspconfig.nvim" },
  { "mfussenegger/nvim-dap" },
  { "jiangmiao/auto-pairs" },

  -- Autocompletion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },

  -- Flutter tools
  { "akinsho/flutter-tools.nvim" },

  -- Other utilities
  { "nvim-lua/plenary.nvim" },
  { "nvim-tree/nvim-web-devicons" },
	{ "nvim-tree/nvim-tree.lua" },
  { "nvim-telescope/telescope.nvim" },
  { "nvim-lualine/lualine.nvim" },
  { 'stevearc/conform.nvim', opts = {} },

  --Colorschemes	
  { "morhetz/gruvbox" },
  { 'sainnhe/everforest' },
  { 'rose-pine/neovim' },
  { 'pineapplegiant/spaceduck' },
  { 'nyoom-engineering/oxocarbon.nvim' },
  { 'cocopon/iceberg.vim' },
  { 'jaredgorski/fogbell.vim' },
})

