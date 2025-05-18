local vim = vim

vim.cmd.colorscheme('starry')

local fterm = require('FTerm')
vim.keymap.set({"i", "n", "t"}, "<C-S-\\>", function() fterm.toggle() end)
