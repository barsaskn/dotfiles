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
    dependencies = {
      "b0o/nvim-tree-preview.lua",
    },
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
    },
  },
  {
    "tversteeg/registers.nvim",
    cmd = "Registers",
    config = {
      window = {
        transparency = 0,
        border = "rounded",
      },
    },
    keys = {
      { '"', mode = { "n", "v" } },
      { "<C-R>", mode = "i" },
    },
    name = "registers",
  },
  {
    "folke/which-key.nvim",
    opts = {
      preset = "helix",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
        "cpp",
        "cmake",
        "gitignore",
        "go",
        "rust",
        "json",
        "make",
      },
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        hover = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "rbong/vim-flog",
    lazy = true,
    cmd = { "Flog", "Flogsplit", "Floggit" },
    dependencies = {
      "tpope/vim-fugitive",
    },
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "f-person/git-blame.nvim",
    cmd = {
      "GitBlameEnable",
    },
    event = "VeryLazy",
    opts = {
      enabled = true,
    },
  },
  {
    "MeanderingProgrammer/markdown.nvim",
    name = "render-markdown",
    cmd = {
      "RenderMarkdown",
    },
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    config = function()
      require("render-markdown").setup {}
    end,
  },
  {
    "sontungexpt/stcursorword",
    event = "VeryLazy",
    config = true,
  },
  {
    "mawkler/modicator.nvim",
    dependencies = "mawkler/onedark.nvim",
    opts = {
      show_warnings = true,
      integration = {
        lualine = {
          enabled = false,
          highlight = "fg",
        },
      },
      highlights = {
        defaults = {
          bold = true,
          italic = true,
        },
      },
    },
    event = "ModeChanged",
  },
  {
    "hedyhli/outline.nvim",
    cmd = {
      "Outline",
      "OutlineFocus",
      "OutlineFocusOutline",
      "OutlineFocusCode",
      "OutlineStatus",
      "OutlineFollow",
      "OutlineRefresh",
    },
    config = function()
      -- Example mapping to toggle outline
      vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

      require("outline").setup {
        -- Your setup opts here (leave empty to use defaults)
      }
    end,
  },
  {
    "sphamba/smear-cursor.nvim",

    event = "VeryLazy",
    opts = {
      cursor_color = "#d3cdc3",
      normal_bg = "#282828",
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      use_floating_windows = true,
      legacy_computing_symbols_support = false,
    },
  },
}
