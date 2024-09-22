require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		c = { "clang-format" },
		python = { "black" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		javascriptreact = { "prettierd" },
		typescriptreact = { "prettierd" },
		html = { "prettierd" },
	},
})
