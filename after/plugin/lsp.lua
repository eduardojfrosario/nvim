-- Reserve a space in the gutter
-- This will avoid an annoying layout shift in the screen
vim.opt.signcolumn = "yes"

vim.diagnostic.config({
	virtual_text = true,
	signs = {
		true,
		text = {
			[vim.diagnostic.severity.ERROR] = "✘",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "⚑",
			[vim.diagnostic.severity.INFO] = "",
		},
	},
	underline = true,
})

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local opts = { buffer = event.buf }
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
		vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
		vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
	end,
})

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd",
		"eslint",
		"lua_ls",
		"jedi_language_server",
		"rust_analyzer",
		"tailwindcss",
		"ts_ls",
		"marksman",
	},
	-- It automatically runs vim.lsp.enable() for installed servers.
	automatic_enable = true,
})

-- mason-nvim-lint: installs the linters
require("mason-nvim-lint").setup({
	ensure_installed = {
		"eslint_d",
		"pylint",
		"jsonlint",
	},
	automatic_installation = false,
})

-- nvim-lint: decides which linter runs for each filetype
local lint = require("lint")

lint.linters_by_ft = {
	javascript = { "eslint_d" },
	javascriptreact = { "eslint_d" },
	typescript = { "eslint_d" },
	typescriptreact = { "eslint_d" },
	python = { "pylint" },
	json = { "jsonlint" },
}

-- autocmd (with augroup so it doesn't duplicate)
local group = vim.api.nvim_create_augroup("NvimLint", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
	group = group,
	callback = function()
		lint.try_lint()
	end,
})
