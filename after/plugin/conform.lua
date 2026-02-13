require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		c = { "clang-format" },
		python = { "black" },
        ["_"] = { "prettier" },
	},
})
