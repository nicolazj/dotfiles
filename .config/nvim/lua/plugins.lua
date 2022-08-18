vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim")

	use("kyazdani42/nvim-web-devicons")
	use("folke/tokyonight.nvim")

	use("folke/which-key.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("nvim-telescope/telescope-live-grep-args.nvim")
	use("nvim-telescope/telescope-project.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"jose-elias-alvarez/typescript.nvim",
		"jose-elias-alvarez/null-ls.nvim",
		"onsails/lspkind-nvim",
	})

	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
	})

	use({
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"petertriho/cmp-git",
		"windwp/nvim-autopairs",
		"windwp/nvim-ts-autotag",
	})

	use("nvim-lualine/lualine.nvim")
	use("lewis6991/gitsigns.nvim")
	use({ "akinsho/bufferline.nvim", tag = "v2.*" })
	use("kyazdani42/nvim-tree.lua")

	use("tpope/vim-commentary")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("tpope/vim-surround")
	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
	})
	use("j-hui/fidget.nvim")
	use("windwp/nvim-spectre")
end)
