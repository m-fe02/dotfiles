return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
	local configs = require("nvim-treesitter")
	configs.setup({
	    highlight = {
		enable = true,
	    },
	    indent = { enable = true },
	    autotage = { enable = true },
	    ensure_installed = {
		"lua",
		"java",
		"xml",
		"bash",
		"hyprlang",
		"rust",
	    },
	    auto_install = false,
	})
    end
}
