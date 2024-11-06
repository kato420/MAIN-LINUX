
require "nvchad.mappings"
-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Mapeos personalizados
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Guardar archivo en modos normal, inserción y visual con Ctrl+s
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", opts)

-- Navegación de tabs
map("n", "te", ":tabedit<CR>", opts)
map("n", "<A-l>", ":tabnext<CR>", opts)  -- Alt+l para ir al siguiente tab
map("n", "<A-h>", ":tabprev<CR>", opts)  -- Alt+Shift+c para ir al tab anterior

-- Dividir ventanas
map("n", "sv", ":vsp<CR>", opts)  -- División vertical
map("n", "ss", ":sp<CR>", opts)   -- División horizontal
map("n", "<leader>q", ":q<CR>", opts)   -- Cerrar ventana
map("n", "<leader>s", ":w<CR>", opts)   -- Guardar archivo

-- Renombrar variable con LSP
map("n", "<leader>rn", function()
  require("nvchad.lsp.renamer")()
end, { desc = "Renombrar variable", silent = true })

-- Mover líneas de texto con Alt+j y Alt+k
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- map({ "n", "t" }, "<A-i>", function()
--   require("nvchad.term").toggle { pos = "sp", id = "floatTerm" }
-- end, { desc = "Terminal Toggle Floating term" })
-- mapeo de tmux
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })

-- Navegar diagnósticos con Ctrl+j
map("n", "<C-d>", function()
  vim.diagnostic.goto_next()
end, opts)
