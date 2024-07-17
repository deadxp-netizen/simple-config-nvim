local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{'morhetz/gruvbox'},							--gruvbox
	{'mhartington/oceanic-next'},					--colorcheme ocaeanic-next
	{'scrooloose/nerdtree'},						--nerdtree
	{'nvim-treesitter/nvim-treesitter'},			--nvim-treesitter
	{'neovim/nvim-lspconfig'},						--lsp
	{'hrsh7th/cmp-nvim-lsp'},						--cmp
	{'hrsh7th/cmp-buffer'},							--cmp
	{'hrsh7th/cmp-path'},							--cmp
	{'hrsh7th/cmp-cmdline'},						--cmp
	{'hrsh7th/nvim-cmp'},							--cmp
	{'tpope/vim-surround'},							--cs'" ysiw'  
	{'vim-airline/vim-airline'},					--строка состояния airline
	{'tpope/vim-fugitive'},							--
	{'majutsushi/tagbar'},							--
	{'tell-k/vim-autopep8'},						--
	{'tpope/vim-commentary'}
	--{'klen/python-mode'}
})
