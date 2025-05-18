return {
    lazy = false,
    priority = 1000,

    'morhetz/gruvbox',
    'EdenEast/nightfox.nvim',
    {
	'catppuccin/nvim',
	name = 'catppuccin',
	config = function ()
	    require'catppuccin'.setup{
		integrations = {
		    cmp = true,
		    mini = {
			enabled = true
		    },
		    notify = true,
		    noice = true,

		},
	    }
	end
    },
    'rebelot/kanagawa.nvim',
    { "bluz71/vim-nightfly-colors", name = "nightfly"},
    {
	'folke/tokyonight.nvim',
	config = function()
	    require('tokyonight').setup{
		style = 'day'
	    }

	end
    },
    {
	'projekt0n/github-nvim-theme', name = 'github-theme'
    },
    'sainnhe/everforest',
    {
	'uloco/bluloco.nvim',
	dependencies = { 'rktjmp/lush.nvim' },
    },
    {
	"pauchiner/pastelnight.nvim",
	opts = {},
    },
    {
	"rose-pine/neovim",
	name = "rose-pine",
    },
    {
	"anAcc22/sakura.nvim",
	dependencies = "rktjmp/lush.nvim",
    },
    {
	"scottmckendry/cyberdream.nvim",
    },
    {
	"shaunsingh/nord.nvim"
    },
    {
	"navarasu/onedark.nvim",
	config = function()
	    require('onedark').setup {
		-- Options: dark, darker, cool, deep, warm, warmer, light
		style = 'deep'
	    }
	    -- Enable theme
	    require('onedark').load()
	end
    },
    {
	"bluz71/vim-moonfly-colors",
	name = "moonfly",
    },
    {
	"0xstepit/flow.nvim",
	tag = "v2.0.2",
	opts = {
	    -- Your configuration options here.
	},
    },
    {
	"ray-x/starry.nvim",
	config = function ()
	    local config = {
		border = false, -- Split window borders
		hide_eob = true, -- Hide end of buffer
		italics = {
		    comments = false, -- Italic comments
		    strings = false, -- Italic strings
		    keywords = false, -- Italic keywords
		    functions = false, -- Italic functions
		    variables = false -- Italic variables
		},

		contrast = { -- Select which windows get the contrast background
		    enable = true, -- Enable contrast
		    terminal = true, -- Darker terminal
		    filetypes = {}, -- Which filetypes get darker? e.g. *.vim, *.cpp, etc.
		},

		text_contrast = {
		    lighter = false, -- Higher contrast text for lighter style
		    darker = false -- Higher contrast text for darker style
		},

		disable = {
		    background = false, -- true: transparent background
		    term_colors = false, -- Disable setting the terminal colors
		    eob_lines = false -- Make end-of-buffer lines invisible
		},

		style = {
		    name = 'moonlight', -- Theme style name (moonlight, earliestsummer, etc.)
		    -- " other themes: dracula, oceanic, dracula_blood, 'deep ocean', darker, palenight, monokai, mariana, emerald, middlenight_blue
		    disable = {},  -- a list of styles to disable, e.g. {'bold', 'underline'}
		    fix = true,
		    darker_contrast = false, -- More contrast for darker style
		    daylight_swith = false, -- Enable day and night style switching
		    deep_black = false, -- Enable a deeper black background
		},

		custom_colors = {
		    variable = '#f797d7',
		},
		custom_highlights = {
		    LineNr = { fg = '#777777' },
		    Idnetifier = { fg = '#ff4797' },
		}
	    }
	    require('starry').setup(config)
	    require('starry.functions').change_style("palenight")
	end,
	name = "starry"
    }
}
