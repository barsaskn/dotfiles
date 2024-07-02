return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = require "configs.cmp",
  },
  {
    "onsails/lspkind.nvim",
  },
  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow",
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = require "configs.nvimtree",
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "cmake-language-server",
        "pyright",
        "black",
        "clangd",
        "gopls",
        "docker-compose-language-service",
        "rust-analyzer",
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TodoLocList", "TodoTelescope", "TodoQuickFix", "TodoTrouble" },
    opts = {
      signs = true,
    }
  }
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
