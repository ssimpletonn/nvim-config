return {
	"catppuccin/nvim",
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
		})
		vim.cmd("colorscheme catppuccin")
	end
}
