require("notify").setup({
	background_colour = "#000000",
})

require("noice").setup({
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
		},
		signature = {
			enabled = true,
			auto_open = {
				enabled = true,
				trigger = true,
				luasnip = false,
				throttle = 120,
			},
		},
		hover = {
			enabled = true,
			silent = true,
		},
	},
	views = {
		notify = {
			timeout = 1500,
		},
	},
	presets = {
		bottom_search = false, -- use a classic bottom cmdline for search
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = false, -- add a border to hover docs and signature help
	},
})
