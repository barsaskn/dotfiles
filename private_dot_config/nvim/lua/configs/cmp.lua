local cmp = require("cmp")

local options = function(_, opts)
  
  opts.mapping["<Down>"] = cmp.mapping.select_next_item()
  opts.mapping["<Up>"] = cmp.mapping.select_prev_item()
end

return options
