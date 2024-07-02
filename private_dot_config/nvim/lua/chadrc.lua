-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "doomchad",
  nvdash = { -- Dashboard
    load_on_startup = true,
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
      { "  Quit", "Spc q", "qall" },
    },
    header = {

      [[     ▄▄                                                                      ]],
      [[    ▄██                                             ▀███                     ]],
      [[     ██                                               ██                     ]],
      [[     ██▄████▄  ▄█▀██▄ ▀███▄███ ▄██▀███▄█▀██▄  ▄██▀███ ██  ▄██▀▀████████▄     ]],
      [[     ██    ▀████   ██   ██▀ ▀▀ ██   ▀▀█   ██  ██   ▀▀ ██ ▄█     ██    ██     ]],
      [[     ██     ██ ▄█████   ██     ▀█████▄▄█████  ▀█████▄ ██▄██     ██    ██     ]],
      [[     ██▄   ▄████   ██   ██     █▄   ███   ██  █▄   ██ ██ ▀██▄   ██    ██     ]],
      [[     █▀█████▀ ▀████▀██▄████▄   ██████▀████▀██▄██████▀████▄ ██▄▄████  ████▄   ]],
    },
  },
  statusline = {
    theme = "vscode_colored",
  },
  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

return M
