local vim = vim
local map = vim.keymap.set

-- map opts autofill function
local function opts(desc)
    return {desc = "Nvim: "..desc, silent = true, nowait=true, noremap = false}
end

-- normal map
local function nmap(lhs,rhs,options)
    return map("n", lhs, rhs, options)
end

-- nvim-tree keymapping
local nvimtree_api = require("nvim-tree.api")

nmap("<Leader>e", nvimtree_api.tree.toggle, opts("Toggle NvimTree"))


-- telescope keymapping
local builtin = require('telescope.builtin')

nmap('<leader>tf', builtin.find_files, { desc = 'Telescope find files' })
nmap('<leader>tg', builtin.live_grep, { desc = 'Telescope live grep' })
nmap('<leader>tb', builtin.buffers, { desc = 'Telescope buffers' })
nmap('<leader>th', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end)
vim.keymap.set("n", "<leader>qS", function() require("persistence").select() end)
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end)
vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end)

local options = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<A-[>', '<Cmd>BufferPrevious<CR>', options)
vim.api.nvim_set_keymap('n', '<A-]>', '<Cmd>BufferNext<CR>', options)
vim.api.nvim_set_keymap('n', '<A-{>', '<Cmd>BufferMovePrevious<CR>', options)
vim.api.nvim_set_keymap('n', '<A-}>', '<Cmd>BufferMoveNext<CR>', options)
vim.api.nvim_set_keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', options)
vim.api.nvim_set_keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', options)
vim.api.nvim_set_keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', options)
vim.api.nvim_set_keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', options)
vim.api.nvim_set_keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', options)
vim.api.nvim_set_keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', options)
vim.api.nvim_set_keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', options)
vim.api.nvim_set_keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', options)
vim.api.nvim_set_keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', options)
vim.api.nvim_set_keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', options)
vim.api.nvim_set_keymap('n', '<C-q>', '<Cmd>BufferClose<CR>', options)
vim.api.nvim_set_keymap('n', '<C-S-p>',   '<Cmd>BufferPick<CR>', options)
vim.api.nvim_set_keymap('n', '<C-Q>', '<Cmd>BufferPickDelete<CR>', options)
vim.api.nvim_set_keymap('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', options)
vim.api.nvim_set_keymap('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', options)
vim.api.nvim_set_keymap('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', options)
vim.api.nvim_set_keymap('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', options)
vim.api.nvim_set_keymap('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', options)
