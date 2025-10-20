local vim = vim

-- vim base config before loading lazy plugins

-- vim configs
--
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
-- vim.o.autochdir = true

vim.opt.fillchars = {eob = " "}
vim.opt.swapfile = false

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.lsp.config('*',{
    textDocument = {
	completion = {
	    completionItem = {
		snippetSupport = true
	    }
	}
    }
})

