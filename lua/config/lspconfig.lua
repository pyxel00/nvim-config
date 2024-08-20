local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = "LSP" .. desc}
  end
  vim.lsp.inlay_hint.enable(true)
end

lspconfig.rust_analyzer.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" }
}

lspconfig.clangd.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "c", "cpp" }
}

lspconfig.jdtls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "java" }
}