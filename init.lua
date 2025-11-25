require("losg.lazy")
require("losg.remap")
require("losg.set")
vim.cmd("colorscheme nightfox")
vim.g.user_emmet_leader_key = '<C-b>'
vim.g.copilot_enabled = false

function ShowBG()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


