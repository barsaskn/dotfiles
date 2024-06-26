local cmp = require("cmp")

local options = {
  mapping = {
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<Up>"] = cmp.mapping.select_prev_item(),
  }
}
return options
