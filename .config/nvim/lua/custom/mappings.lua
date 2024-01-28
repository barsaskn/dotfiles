local M = {}

M.general = {
  n = {
    ["<C-w>h"] = {"<cmd> vsplit <CR>", "Split vertically"},
    ["<C-w>v"] = {"<cmd> split <CR>", "Split horizantally"},
    ["<C-w>s"] = {""}
  }
}

M.nvimtree = {
  plugin = true,

  n = {

    -- toggle
    ["<C-e>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<C-f>"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  
  },
}


return M
