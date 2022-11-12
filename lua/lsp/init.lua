require("mason")
require("lsp.diagnostics").setup()
require("lsp.handlers").setup()

local function on_attach(client, bufnr)
	require("nvim-navic").attach(client, bufnr)
	require("lsp.formatting").setup(client, bufnr)
	require("lsp.keys").setup(client, bufnr)
end

---@type lspconfig.options
local servers = {
	ansiblels = {},
	bashls = {},
	clangd = {},
	cssls = {},
	dockerls = {},
	tsserver = {},
	eslint = {},
	html = {},
	jsonls = {
		settings = {
			json = {
				format = {
					enable = true,
				},
				schemas = require("schemastore").json.schemas(),
				validate = { enable = true },
			},
		},
	},
	marksman = {},
	pyright = {},
	rust_analyzer = {
		settings = {
			["rust-analyzer"] = {
				cargo = { allFeatures = true },
				checkOnSave = {
					command = "clippy",
					extraArgs = { "--no-deps" },
				},
			},
		},
	},
	yamlls = {},
	sumneko_lua = {
		cmd = { "lua-language-server" },
		single_file_support = true,
		settings = {
			Lua = {
				workspace = {
					library = vim.api.nvim_get_runtime_file("", true),
					checkThirdParty = false,
				},
				completion = {
					workspaceWord = true,
				},
				misc = {
					parameters = {
						"--log-level=trace",
					},
				},
				diagnostics = {
					-- enable = false,
					-- groupFileStatus = {
					--   ["ambiguity"] = "Opened",
					--   ["await"] = "Opened",
					--   ["codestyle"] = "None",
					--   ["duplicate"] = "Opened",
					--   ["global"] = "Opened",
					--   ["luadoc"] = "Opened",
					--   ["redefined"] = "Opened",
					--   ["strict"] = "Opened",
					--   ["strong"] = "Opened",
					--   ["type-check"] = "Opened",
					--   ["unbalanced"] = "Opened",
					--   ["unused"] = "Opened",
					-- },
					--
					globals = {
						"vim",
					},
					unusedLocalExclude = { "_*" },
				},
				format = {
					enable = false,
					defaultConfig = {
						indent_style = "space",
						indent_size = "2",
						continuation_indent_size = "2",
					},
				},
			},
		},
	},
	teal_ls = {},
	vimls = {},
	tailwindcss = {},
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

---@type _.lspconfig.options
local options = {
	on_attach = on_attach,
	capabilities = capabilities,
	flages = {
		debounce_text_changes = 150,
	},
}

for server, opts in pairs(servers) do
	opts = vim.tbl_deep_extend("force", {}, options, opts or {})
	if server == "tsserver" then
		require("typescript").setup({ server = opts })
	else
		require("lspconfig")[server].setup(opts)
	end
end

require("nls").setup(options)
