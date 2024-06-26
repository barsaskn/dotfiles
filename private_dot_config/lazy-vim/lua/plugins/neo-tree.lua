return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    -- to disable keymap
    -- {"<leader>fe", false},
    {
      "<leader>fx",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
  },
  opts = {
    window = {
      mappings = {
        v = "open_vsplit",
      },
    },
  },
}
