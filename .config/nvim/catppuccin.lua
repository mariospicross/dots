require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    show_end_of_buffer = true,
    term_colors = true,
    integrations = {
        mason = true,
        treesitter = true,
  	    nvimtree = true,
        lsp_trouble = true,

        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
            },
            inlay_hints = {
                background = true,
            },
        },

        telescope = {
            enabled = true,
        }
    },
})
vim.cmd.colorscheme "catppuccin"
