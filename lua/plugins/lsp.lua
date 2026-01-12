return {
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			{ "neovim/nvim-lspconfig" },
			{ "rafamadriz/friendly-snippets" },

			--linter
			{ "mfussenegger/nvim-lint" },
			{ "rshkarin/mason-nvim-lint" },
		},
	},
}
