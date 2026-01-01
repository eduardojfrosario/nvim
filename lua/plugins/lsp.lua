return {
	{ "nvim-mini/mini.nvim" },
	{ "mason-org/mason.nvim", opts = {} },
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
	},
}
