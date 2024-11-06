-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chocolate",
  transparency = true,
  -- hl_override = {
  Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}
M.ui = {
  statusline = {
    theme = "minimal",
  },
  tabufline = {
    enabled = true,
  },
}
M.nvdash = {
  load_on_startup = true,
  header = {
    " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣤⣄⣾⠀⠀⠀⠀⠀⠀",
    " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⢿⣿⣿⠀⠀⠀⠀⠀⠀",
    " ⠀⠀⠀⠀⠀⠀⢰⣦⠀⠀⠀⣽⢿⣵⣿⡟⠀⠀⠀⠀⠀⠀",
    " ⠀⠀⠀⠀⠀⣀⣀⣽⣷⣖⡤⣵⣿⣧⣭⠁⠀⠀⠀⠀⠀⠀",
    " ⢀⡤⢦⣄⡈⠛⠈⠛⠋⠉⠋⠻⣿⣿⡿⣧⣀⠀⠀⠀⠀⠀",
    " ⣾⠁⠀⠘⣷⣄⠀⠀⠀⠀⠀⠀⠙⣿⣿⡄⠉⠻⣦⠀⠀⠀",
    " ⢹⡄⠀⠀⠘⣿⣦⡀⠀⠀⠀⣠⣾⣿⢯⣯⣤⡀⠈⣷⣄⠀",
    " ⠈⢷⡄⠀⠀⠸⣿⣿⣦⣤⣼⣿⣿⣿⢾⣿⣿⣷⠈⠇⡹⡦",
    " ⠀⠈⢿⣷⣄⡀⠘⢿⣿⡇⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀",
    " ⠀⠀⠀⠹⣿⣿⡄⠀⠙⢣⣿⠿⠿⠟⠛⣿⠟⠁⠀⠀⠀⠀",
    " ⠀⠀⠀⠀⠀⠉⠀⠀⣠⡿⠃⠀⠀⠀⢠⣿⠀⠀⠀⠀⠀⠀",
    " ⠀⠀⠀⠀⠀⠀⠀⢠⣿⡃⠀⠀⠀⠀⠶⠻⣷⣄⣀⢀⠀⠀",
    " ⠀⠀⠀⠀⠀⠀⣰⣿⡿⣿⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀",
    " ⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  },
}
M.mason = {
  pkgs = {
    "prettier",
    "black",
    "google-java-format",
  },
}
M.lsp = {
  signature = true,
}

return M