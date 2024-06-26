-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bp', ':bprev<CR>', { noremap = true, silent = true })

-- Register which-key descriptions
local wk = require("which-key")
wk.register({
  bn = { ":bnext<CR>", "Next Buffer" },
  bp = { ":bprev<CR>", "Previous Buffer" },
}, { prefix = "<leader>" })
