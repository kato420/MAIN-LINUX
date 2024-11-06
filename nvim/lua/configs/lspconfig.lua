-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
-- Configuración para Java (jdtls)
lspconfig.jdtls.setup {
  -- cmd = { 'jdtls' },  -- Asegúrate de que el ejecutable esté en tu PATH
  cmd = {
    "/usr/lib/jvm/java-17-openjdk-amd64/bin/java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.level=ALL",
    "-Xmx1g",
    "-jar",
    "/home/kato/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar",
    "-configuration",
    "/home/kato/.local/share/nvim/mason/packages/jdtls/config_linux",
    "-data",
    "/home/kato/Desktop/MyJavaProjectWorkspace",
  },
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  root_dir = function()
    return vim.fs.dirname(
      vim.fs.find({ ".git", "pom.xml", "build.gradle", "settings.gradle", "mvnw", "gradlew" }, { upward = true })[1]
    )
  end,
}
