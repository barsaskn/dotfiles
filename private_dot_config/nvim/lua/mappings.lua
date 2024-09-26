require "nvchad.mappings"

local wk = require "which-key"
local map = vim.keymap.set
local del = vim.keymap.del

wk.add { 
  {
    { "<leader>f", group = "Find" },
    { "<leader>g", group = "Git" },
    { "<leader>t", group = "Tab" }
  }
}

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<Leader>P", "<cmd> Glow <cr>", { desc = "Show file preview" })
map("n", "<Leader>q", "<cmd> q! <cr>", { desc = "Quit" })
map("n", "<Leader>ft", "<cmd> TodoTelescope <cr>", { desc = "Telescope Todo grep" })
map("n", "<Leader>gg", "<cmd> LazyGit <cr>", { desc = "LazyGit" })
map("n", "<Leader>gb", "<cmd> Flog <cr>", { desc = "Show branches" })
map("n", "<Leader>T", "<cmd>Telescope themes<CR>", { desc = "Themes" })
map("n", "<leader>H", "<cmd>NvCheatsheet<CR>", { desc = "toggle nvcheatsheet" })

map("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New tab" })
map("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close tab" })
map("n", "<leader>t<Left>", "<cmd>tabnext<CR>", { desc = "Previous tab" })
map("n", "<leader>t<Right>", "<cmd>tabprevious<CR>", { desc = "Next tab" })
map("n", "<leader>tl", "<cmd>tabs<CR>", { desc = "List tab" })

map("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

for i = 1, 9, 1 do
  map("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

vim.api.nvim_set_keymap('n', 'j', '10j', { noremap = true, silent = true, desc = "Down x10" })
vim.api.nvim_set_keymap('n', 'k', '10k', { noremap = true, silent = true, desc = "Up x10" })

del("n", "<leader>ma")
del("n", "<leader>n")
del("n", "<leader>cm")
del("n", "<leader>cc")
del("n", "<leader>ds")
del("n", "<leader>pt")
del("n", "<leader>rn")
del("n", "<leader>th")
del("n", "<leader>ch")
