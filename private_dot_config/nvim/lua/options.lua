require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local g = vim.g
local opt = vim.opt

g.autoformat = false

opt.fixendofline = false
opt.relativenumber = false
opt.whichwrap:append('>,<,h,l')
opt.wrap = false

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
