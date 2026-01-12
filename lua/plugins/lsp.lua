return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
			{ "rafamadriz/friendly-snippets" },
			{ "mfussenegger/nvim-lint" },
		},
	},
}
