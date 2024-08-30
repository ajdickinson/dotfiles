local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.r_language_server.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"R", "r"},
  root_dir = lspconfig.util.root_pattern(".Rproj", ".git"),
})

lspconfig.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"css", "scss", "less"},
})

lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"html"},
})

lspconfig.yamlls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"yaml", "yml"},
})

lspconfig.julials.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"julia"},
})

-- lspconfig.bash.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"sh", "bash"},
-- })

lspconfig.marksman.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"markdown", "quarto"},
  root_dir = lspconfig.util.root_pattern(
    ".git", "marksman.toml", "_quarto.yaml"
  ),
})
