vim.opt.termguicolors = true
require("bufferline").setup{
  highlights = require("catppuccin.groups.integrations.bufferline").get(),
  options = {
    themable = true,
    diagnostics = "nvim_lsp",
    offsets = {
	{
	    filetype = "NvimTree",
	    text = "Directory",
	    text_align = "center",
	    separator = true,
	}
    },
  },
}

