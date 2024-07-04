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

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.guicursor="n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

vim.scriptencoding = "utf-8"
