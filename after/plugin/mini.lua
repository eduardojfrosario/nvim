require("mini.icons").setup({})

---snippets---
local mini_snippets = require("mini.snippets")
local gen_loader = mini_snippets.gen_loader
mini_snippets.setup({
	snippets = {
		gen_loader.from_lang(),
	},
})
mini_snippets.start_lsp_server({})

---cmp---
require("mini.completion").setup({
	window = {
		info = { border = "double" },
		signature = { border = "double" },
	},
})
-- <C-y> chooses the first completion if none select
vim.opt.completeopt = { "menu", "menuone", "noinsert" }

---autopairs---
require("mini.pairs").setup({
	modes = { insert = true, command = false, terminal = false },
	mappings = {
		["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
		["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." },
		["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." },

		[")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
		["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
		["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },

		['"'] = { action = "closeopen", pair = '""', neigh_pattern = "[^\\].", register = { cr = false } },
		["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a\\].", register = { cr = false } },
		["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\].", register = { cr = false } },
	},
})

---surround---
require("mini.surround").setup({
	custom_surroundings = nil,
	highlight_duration = 500,
	mappings = {
		add = "sa", -- Add surrounding in Normal and Visual modes
		delete = "sd", -- Delete surrounding
		find = "sf", -- Find surrounding (to the right)
		find_left = "sF", -- Find surrounding (to the left)
		highlight = "sh", -- Highlight surrounding
		replace = "sr", -- Replace surrounding

		suffix_last = "l", -- Suffix to search with "prev" method
		suffix_next = "n", -- Suffix to search with "next" method
	},
	-- Number of lines within which surrounding is searched
	n_lines = 20,
	respect_selection_type = false,
	search_method = "cover",
	silent = false,
})

---move---
require("mini.move").setup({
	mappings = {
		--visual mode (only selected block)
		left = "<M-h>",
		right = "<M-l>",
		down = "<M-j>",
		up = "<M-k>",
		--normal mode (entire line)
		line_left = "<M-h>",
		line_right = "<M-l>",
		line_down = "<M-j>",
		line_up = "<M-k>",
	},
	options = {
		reindent_linewise = true,
	},
})

---ai---
require("mini.ai").setup({
	custom_textobjects = nil,
	mappings = {
		around = "a",
		inside = "i",

		around_next = "an",
		inside_next = "in",
		around_last = "al",
		inside_last = "il",
	},
	n_lines = 50,
	search_method = "cover_or_next",
	silent = false,
})
