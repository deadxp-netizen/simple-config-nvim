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
	 {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
},	
	 {'solvedbiscuit71/vim-autopair'},
	 {'mhinz/vim-startify'},
	{'morhetz/gruvbox'},							--gruvbox
	{'mhartington/oceanic-next'},					--colorcheme ocaeanic-next
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
	{'tpope/vim-commentary'},
	{
		"coffebar/transfer.nvim",
		lazy = true,
		cmd = { 
			"TransferInit",
			"DiffRemote",
			"TransferUpload",
			"TransferDownload",
			"TransferDirDiff",
			"TransferRepeat"
		},
		opts = {},
	},
	{
		"Exafunction/codeium.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({
			})
		end
	},
	-- {'yaegassy/coc-pylsp'},
	{'xiyaowong/transparent.nvim'},
	{
    'nvim-lualine/lualine.nvim',
    },
	{ 'nvim-tree/nvim-web-devicons' },
	{'ryanoasis/vim-devicons'},{'neoclide/coc.nvim', branch = 'release'},
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	},
	{'dense-analysis/ale'}

})

vim.g.ale_enabled = 1
vim.g.ale_lint_on_text_changed = 'always'
vim.g.ale_lint_on_enter = 1

vim.g.ale_linters = { python = { 'flake8', 'pylint' } }
vim.g.ale_fixers = { python = { 'black', 'isort' } }

vim.cmd('let $PYTHONPATH = "/home/tol-deb/JOB/LeadBurn/"')
vim.cmd('let $PYTHONPATH = "/home/tol-deb/JOB/LeadBurn/app"')
