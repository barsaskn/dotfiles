require "nvchad.mappings"

local wk = require "which-key"
local map = vim.keymap.set
local del = vim.keymap.del

wk.add { 
  {
    { "<leader>f", group = "Find" },
  }
}

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<Leader>gg", "<cmd> Glow <cr>", { desc = "Show file preview" })
map("n", "<Leader>q", "<cmd> q! <cr>", { desc = "Quit" })
map("n", "<Leader>ft", "<cmd> TodoTelescope <cr>", { desc = "Telescope Todo grep" })

for i = 1, 9, 1 do
  map("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

del("n", "<leader>ma")
