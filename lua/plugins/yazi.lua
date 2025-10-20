---@type LazySpec
return {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    lazy = true,
    dependencies = {
	-- check the installation instructions at
	-- https://github.com/folke/snacks.nvim
	"folke/snacks.nvim"
    },
    keys = {
	-- 👇 in this section, choose your own keymappings!
	{
	    "<leader>ycf",
	    mode = { "n", "v" },
	    "<cmd>Yazi<cr>",
	    desc = "Open yazi at the current file",
	},
	{
	    -- Open in the current working directory
	    "<leader>ycw",
	    "<cmd>Yazi cwd<cr>",
	    desc = "Open the file manager in nvim's working directory",
	},
	{
	    "<leader>yy",
	    "<cmd>Yazi toggle<cr>",
	    desc = "Resume the last yazi session",
	},
    },
    ---@type YaziConfig | {}
    opts = {
	-- if you want to open yazi instead of netrw, see below for more info
	open_for_directories = false,
	keymaps = {
	    show_help = "<f1>",
	},
	floating_window_scaling_factor = 1.0,
    },
    -- 👇 if you use `open_for_directories=true`, this is recommended
    init = function()
	-- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
	-- vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1
    end,
}
