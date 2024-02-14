return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
        local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

        parser_config.blade = {
            install_info = {
                url = "https://github.com/EmranMR/tree-sitter-blade",
                files = {"src/parser.c"},
                branch = "main",
            },
            filetype = "blade"
        }

        vim.cmd('autocmd BufNewFile,BufRead *.blade.php set filetype=blade')

		configs.setup({
			ensure_installed = { "javascript", "html", "php", "blade", "css", "bash", "regex", "markdown_inline" },
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
