require "nvchad.mappings"

local wk = require "which-key"
local map = vim.keymap.set
local del = vim.keymap.del

wk.add { 
  {
    { "<leader>f", group = "Find" },
    { "<leader>g", group = "Git" },
  }
}

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<Leader>p", "<cmd> Glow <cr>", { desc = "Show file preview" })
map("n", "<Leader>q", "<cmd> q! <cr>", { desc = "Quit" })
map("n", "<Leader>ft", "<cmd> TodoTelescope <cr>", { desc = "Telescope Todo grep" })
map("n", "<Leader>gg", "<cmd> LazyGit <cr>", { desc = "LazyGit" })
map("n", "<Leader>T", "<cmd>Telescope themes<CR>", { desc = "Themes" })
map("n", "<leader>H", "<cmd>NvCheatsheet<CR>", { desc = "toggle nvcheatsheet" })

for i = 1, 9, 1 do
  map("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

del("n", "<leader>ma")
del("n", "<leader>n")
del("n", "<leader>cm")
del("n", "<leader>cc")
del("n", "<leader>ds")
del("n", "<leader>pt")
del("n", "<leader>rn")
del("n", "<leader>th")
del("n", "<leader>ch")
