return {
	{ "nvim-mini/mini.nvim", version = false },
	{ "mason-org/mason.nvim", opts = {} },
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
	},
}
