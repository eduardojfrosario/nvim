-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- using oil instead ':Ex'
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>")

-- alias CTRL_C to ESC because of Visual Block
vim.keymap.set("i", "<C-c>", "<Esc>")

-- select all text when in insert mode
vim.keymap.set("i", "<C-a>", "<C-c>ggVG")

-- drag the selected lines (replaced by mini.move)
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the middle
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- deleting without yanking
vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("n", "<leader>D", '"_D')
vim.keymap.set("v", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>D", '"_D')

-- copying to clipboard
vim.keymap.set("n", "<leader>y", '\"+y')
vim.keymap.set("v", "<leader>y", '\"+y')
vim.keymap.set("n", "<leader>Y", '\"+Y')
vim.keymap.set("v", "<leader>Y", '\"+Y')

-- remove the 'Q' keybinding
vim.keymap.set("n", "Q", "<nop>")

-- format the entire file
vim.keymap.set("n", "<leader>f", ':lua require("conform").format()<CR>')

-- quick-fixes
vim.keymap.set("n", "<leader>,", vim.lsp.buf.code_action)

-- replace selected word (like F2)
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
