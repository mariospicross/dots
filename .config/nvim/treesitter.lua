require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "c", "c_sharp", "css", "fish", "gdscript", "go", "html", "java", "javascript", "kotlin", "lua", "markdown", "python", "rust", "vhs", "vim", "yuck"},

  sync_install = false,
  auto_install = true,
  additional_vim_regex_highlighting = false,
  highlight = {
    enable = true,
  },
}
