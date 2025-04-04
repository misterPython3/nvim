local vim = vim

vim.cmd.colorscheme('github_light_high_contrast')

local fterm = require('FTerm')
vim.keymap.set({"i", "n", "t"}, "<C-S-\\>", function() fterm.toggle() end)
