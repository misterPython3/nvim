local vim = vim

vim.cmd.colorscheme('catppuccin-macchiato')

local fterm = require('FTerm')
vim.keymap.set({"i", "n", "t"}, "<C-S-\\>", function() fterm.toggle() end)
