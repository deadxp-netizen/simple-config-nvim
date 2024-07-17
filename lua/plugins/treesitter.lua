require'nvim-treesitter.configs'.setup {
  ensure_installed = {
	  "css",
	  "html",
	  "javascript",
	  "sql",
	  "python",
	  "c_sharp",
	  "cpp",
	  "c",
	  "vim",
	  "markdown"
  },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true
  },
}
