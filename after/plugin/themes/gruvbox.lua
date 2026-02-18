local gruvbox = require("gruvbox")
local colors = gruvbox.palette

gruvbox.setup({
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
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {
		Comment = { fg = colors.gray, italic = true },
		Conditional = { fg = colors.bright_red, italic = true },
		Keyword = { fg = colors.bright_red, italic = true },
		Repeat = { fg = colors.bright_red, italic = true },
		Constant = { fg = colors.bright_purple, bold = true },
		Function = { fg = colors.bright_green, bold = true, italic = true },
		Type = { fg = colors.bright_yellow, italic = true },
	},
	dim_inactive = false,
	transparent_mode = true,
})
