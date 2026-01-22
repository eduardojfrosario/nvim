require("gruvbox").setup({
	terminal_colors = true, -- add neovim terminal colors
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = false, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {
		Comment = { italic = true },
		Conditional = { italic = true },
		Keyword = { italic = true },
		Repeat = { italic = true },
		Constant = { bold = true },
		Function = { bold = true, italic = true },
		Type = { italic = true },
	},
	dim_inactive = false,
	transparent_mode = true,
})
