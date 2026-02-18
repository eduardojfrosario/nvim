-- Configuration for tokyonight
require("tokyonight").setup({
	style = "night", -- Choose between 'storm', 'night', 'day'
	transparent = true, -- Enable transparent background
	terminal_colors = true, -- Apply theme to terminal
	styles = {
		sidebars = "transparent",
		floats = "transparent",
		comments = { italic = true },
		keywords = { italic = true },
		functions = { italic = true, bold = true },
		strings = { italic = true },
	},
	sidebars = { "qf", "help", "terminal", "packer" }, -- Set specific sidebars to be transparent
})
