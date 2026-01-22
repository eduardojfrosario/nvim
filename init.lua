require("losg.lazy")
require("losg.remap")
require("losg.set")
vim.cmd("colorscheme gruvbox")
vim.g.user_emmet_leader_key = '<C-b>'
vim.g.copilot_enabled = false

local spell_group = vim.api.nvim_create_augroup("AutoSpell", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text" },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "en_us", "pt" }
  end,
  group = spell_group,
})
