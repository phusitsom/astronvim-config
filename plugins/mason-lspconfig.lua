-- use mason-lspconfig to configure LSP installations
return {
  automatic_installation = true,
  ensure_installed = {
    "sumneko_lua",
    "rust_analyzer",
    "tsserver",
    "clangd",
    "cssls",
    "html",
    "marksman",
    "jsonls",
    "pyright",
    "sqls",
    "yamlls",
  },
}
