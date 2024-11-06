return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
    opts = {},
  },
  -- recordar el evento de mierdaaa :D
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "barrett-ruth/live-server.nvim",
    build = "yarn global add live-server", -- Asegúrate de tener `yarn` y `npm` instalados
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
    config = function()
      require("live-server").setup {
        -- Configuraciones opcionales
        port = 5500,
        browser_command = "chromium", -- Cambia a tu navegador preferido
        quiet = false,
      }
    end,
  },
  {
    "mfussenegger/nvim-jdtls",
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
