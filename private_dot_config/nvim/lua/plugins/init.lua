return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = require("configs.cmp")
  },
  {
    "onsails/lspkind.nvim",
  },
  {
    "ellisonleao/glow.nvim", 
    config = true, 
    cmd = "Glow"
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = require("configs.nvimtree")
  },
  {
    "williamboman/mason.nvim",
    opts = {
   	  ensure_installed = {
   			"lua-language-server", "stylua",
   			"html-lsp", "css-lsp" , "prettier",
        "cmake-language-server", "pyright", "clangd"
   		},
   	},
  },
 -- {
 --  "nvim-treesitter/nvim-treesitter",
 --  	opts = {
 --  		ensure_installed = {
 --  			"vim", "lua", "vimdoc",
 --       "html", "css", "python"
 --     },
 --   },
 -- },
}
