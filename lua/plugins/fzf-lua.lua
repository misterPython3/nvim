return {
    "ibhagwan/fzf-lua",
    lazy = false,
    priority = 1000,
    dependencies = {
	"nvim-tree/nvim-web-devicons"
    },
    opts = {
	keymap = {
	    builtin = {
		["<M-Esc>"]     = "hide",     -- hide fzf-lua, `:FzfLua resume` to continue
		["<F1>"]        = "toggle-help",
		["<F2>"]        = "toggle-fullscreen",
		["<F3>"]        = "toggle-preview-wrap",
		["<F4>"]        = "toggle-preview",
		["<F5>"]        = "toggle-preview-ccw",
		["<F6>"]        = "toggle-preview-cw",
		["<F7>"]        = "toggle-preview-ts-ctx",
		["<F8>"]        = "preview-ts-ctx-dec",
		["<F9>"]        = "preview-ts-ctx-inc",
		["<S-Left>"]    = "preview-reset",
		["<S-down>"]    = "preview-page-down",
		["<S-up>"]      = "preview-page-up",
		["<M-S-down>"]  = "preview-down",
		["<M-S-up>"]    = "preview-up",
	    },
	    fzf = {
		["ctrl-z"]      = "abort",
		["ctrl-u"]      = "unix-line-discard",
		["ctrl-f"]      = "half-page-down",
		["ctrl-b"]      = "half-page-up",
		["ctrl-a"]      = "beginning-of-line",
		["ctrl-e"]      = "end-of-line",
		["alt-a"]       = "toggle-all",
		["alt-g"]       = "first",
		["alt-G"]       = "last",
		["f3"]          = "toggle-preview-wrap",
		["f4"]          = "toggle-preview",
		["shift-down"]  = "preview-page-down",
		["shift-up"]    = "preview-page-up",
	    },
	},
    }
}
