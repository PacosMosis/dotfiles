require'nvim-treesitter.configs'.setup {

  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "query",
    "python",
    "html",
    "javascript",
    "java",
    "c",
    "cpp",
    "css"
},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

