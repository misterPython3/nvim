return {
    "williamboman/mason.nvim",
    dependencies = {
	"neovim/nvim-lspconfig",
	"williamboman/mason-lspconfig.nvim",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"nvim-java/nvim-java",
    },
    lazy = false,
    priority = 1000,
    cmd = {"Mason", "MasonInstall", "MasonUpdate", "MasonUninstall", "MasonLog"},
    build = ":MasonUpdate",
    config = function()
	local lspconfig = require("lspconfig")
	local luasnip = require('luasnip')
	local cmp = require('cmp')

	cmp.setup({
	    snippet = {
		expand = function(args)
		    luasnip.lsp_expand(args.body)
		end
	    },
	    window = {
	    },
	    mapping = {
		['<CR>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
			    if luasnip.expandable() then
				luasnip.expand()
			    else
				cmp.confirm({
				    select = true,
				})
			    end
			else
			    fallback()
			end
		    end),

		["<Tab>"] = cmp.mapping(function(fallback)
		  if cmp.visible() then
		    cmp.select_next_item()
		  elseif luasnip.locally_jumpable(1) then
		    luasnip.jump(1)
		  else
		    fallback()
		  end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
		  if cmp.visible() then
		    cmp.select_prev_item()
		  elseif luasnip.locally_jumpable(-1) then
		    luasnip.jump(-1)
		  else
		    fallback()
		  end
		end, { "i", "s" }),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-n>"] = cmp.mapping.scroll_docs(1),
		["<C-b>"] = cmp.mapping.scroll_docs(-1),
		["<C-e>"] = cmp.mapping.abort(),
	    },
	    sources = cmp.config.sources(
		{
		    { 
			name = 'luasnip',
			option = { use_show_condition = false }
		    },
		    { name = 'nvim_lsp' },
		},
		{
		    { name = 'buffer' }
		}
	    )

	})

	cmp.setup.cmdline({'/', '?'}, {
	    mapping = cmp.mapping.preset.cmdline(),
	    sources = {
		{ name = 'buffer' }
	    }
	})

	cmp.setup.cmdline(':', {
	    mapping = cmp.mapping.preset.cmdline(),
	    sources = cmp.config.sources(
		{
		   { name = 'path' }
		},
		{
		    { name = 'cmdline' }
		}
	    ),
	    matching = { disallow_symbol_nonprefix_matching = false }
	})

	local cmp_nvim_lsp = require("cmp_nvim_lsp")
	local cmp_capabilities = cmp_nvim_lsp.default_capabilities()

	require("mason").setup()
	local mason_lspconfig = require("mason-lspconfig")
	mason_lspconfig.setup({
	    ensure_installed = {
		"lua_ls"
	    }
	})
	mason_lspconfig.setup_handlers({
	    function(server)
		lspconfig[server].setup{
		    capabilities = cmp_capabilities
		}
	    end,
	    ["rust_analyzer"] = function() end,
	    ["lua_ls"] = function ()
		lspconfig.lua_ls.setup {
		    capabilities = cmp_capabilities,
		    settings = {
			Lua = {
			    diagnostics = {
				globals = { "vim" }
			    }
			}
		    }
		}
	    end,
	    ["jdtls"] = function()
		local config = {
		    capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities()),
		    root_dir = vim.fs.root(0, {".git", "mvnw", "gradlew"}),
		}
		require('java').setup()
		lspconfig.jdtls.setup(config)
	    end,
	    ["emmet_ls"] = function()
		lspconfig.emmet_ls.setup({
		    capabilities = cmp_capabilities,
		    filetypes = {
			'html',
			'css',
			'php',
			'xml',
			'xhtml',
			'svelte',
			'vue',
			'jsx',
			'tsx'
		    },
		})
	    end

	})
    end
}
