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
		"sonarlint-language-server",
	},
	-- It automatically runs vim.lsp.enable() for installed servers.
	automatic_enable = true,
})

require("mason-nvim-lint").setup({
	ensure_installed = {
		"eslint_d",
		"pylint",
		"jsonlint",
	},
	automatic_installation = true,
})

vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
