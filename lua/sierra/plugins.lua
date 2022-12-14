local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

--TODO:

packer.startup(function(use)
	-- let packer manage itself
	use("wbthomason/packer.nvim")

	-- color theme
	use({
		"svrana/neosolarized.nvim",
		requires = { "tjdevries/colorbuddy.nvim" },
	})

	-- Statusline
	use("nvim-lualine/lualine.nvim")

	-- Common utilities
	use("nvim-lua/plenary.nvim")

	-- VSCode-lie pictograms
	use("onsails/lspkind-nvim")

	use("hrsh7th/cmp-nvim-lsp")

	-- NVIM-Completion
	use({
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		module = "cmp",
		requires = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-emoji",
			"hrsh7th/cmp-cmdline",
			"dmitmel/cmp-cmdline-history",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp-signature-help",
		},
	})
	use("ms-jpq/coq_nvim")

	-- LSP
	use("neovim/nvim-lspconfig")

	-- NULL-LS
	use("jose-elias-alvarez/null-ls.nvim")

	-- Filetree
	--use {
	--"nvim-neo-tree/neo-tree.nvim",
	--branch = "v2.x",
	--requires = {
	--"nvim-lua/plenary.nvim",
	--"kyazdani42/nvim-web-devicons",
	--"MunifTanjim/nui.nvim",
	--}
	--}

	-- Prettier plugins for Neovims LSP
	use("MunifTanjim/prettier.nvim")

	-- Neovim Package Manager
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- LSP User Interface
	use("glepnir/lspsaga.nvim")

	-- Snippets for LUA
	use("L3MON4D3/LuaSnip")

	-- Syntax highlighting
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- File Browser
	use({ "nvim-telescope/telescope.nvim" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })

	-- Automation
	use({
		"windwp/nvim-autopairs",
		-- module = "nvim-autopairs",
	})
	use("windwp/nvim-ts-autotag")

	-- Color highlighting
	-- use 'norcalli/nvim-colorizer.lua'
	use({
		"NvChad/nvim-colorizer.lua",
	})
	-- Zen Mode

	use("folke/zen-mode.nvim")

	-- Bufferline
	use("akinsho/nvim-bufferline.lua")

	-- GIT Integration
	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim")

	--TODO: Add docs for plugins
	use("github/copilot.vim")

	-- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

	use("folke/trouble.nvim")

	use("stevearc/aerial.nvim")

	use({
		"numToStr/Comment.nvim",
		requires = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		--keys = { "gc", "gcc", "gbc" },
	})

	-- use {
	--   'folke/todo-comments.nvim',
	--   requires = 'nvim-lua/plenary.nvim'
	-- }

	use("xiyaowong/nvim-transparent")

	use("stevearc/dressing.nvim")

	use("dstein64/vim-startuptime")

	use("folke/which-key.nvim")

	use({ "famiu/bufdelete.nvim", cmd = "Bdelete" })

	use("rktjmp/lush.nvim")

	use("kartikp10/noctis.nvim")

	use({
		"monaqa/dial.nvim",
	})
	use({
		"sindrets/diffview.nvim",
	})
	use({
		"folke/noice.nvim",
		-- event = 'VimEnter',

		requires = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	})
	use({
		"TimUntersberger/neogit",
	})

	-- use 'ellisonleao/glow.nvim'

	use({
		"rlch/github-notifications.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})

	use("folke/tokyonight.nvim")

	use({
		"nvim-tree/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		tag = "nightly",
	})

	use("lervag/vimtex")

	use("ggandor/lightspeed.nvim")
	use({
		"SmiteshP/nvim-navic",
		config = function()
			vim.g.navic_silence = true
			require("nvim-navic").setup({ separator = " ", hightlight = true, depth_limit = 5 })
		end,
	})

	use({
		"b0o/SchemaStore.nvim",
	})

	use({
		"jose-elias-alvarez/typescript.nvim",
	})
end)
