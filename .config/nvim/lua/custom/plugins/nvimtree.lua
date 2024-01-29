local function attach(bufnr)
    local api = require "nvim-tree.api"
  
    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end
  
    -- default mappings
    api.config.mappings.default_on_attach(bufnr)
  
    -- custom mappings
    vim.keymap.set('n', '<C-h>',   api.node.open.vertical,              opts('Open: Vertical Split'))
    vim.keymap.set('n', '<C-v>',   api.node.open.horizontal,            opts('Open: Horizontal Split'))
end

return {
    'nvim-tree/nvim-tree.lua',
    opts = {
        on_attach = attach,
    }   
}
