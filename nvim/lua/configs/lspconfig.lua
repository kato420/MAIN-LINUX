local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "marksman" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
--clangd
lspconfig.clangd.setup {
  name = "clangd",
  cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
  initialization_options = {
    fallback_flags = { "-std=c++17" },
  },
}
-- -- pyright
lspconfig.pyright.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

-- ruff LSP setup
lspconfig.ruff_lsp.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  init_options = {
    settings = {
      ["ruff"] = {
        organizeImports = true, -- Organiza automáticamente los imports
        -- Puedes añadir más configuraciones de linting si es necesario
      },
    },
  },
}

-- pylsp with mypy setup
lspconfig.pylsp.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pylsp_mypy = {
          enabled = true,
          live_mode = false, -- Para verificar solo al guardar (puedes cambiar a true)
          strict = false, -- Puedes habilitar `strict` si deseas una verificación más estricta
        },
      },
    },
  },
}

--eslint--
lspconfig.eslint.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
