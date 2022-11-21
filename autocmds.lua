vim.api.nvim_create_autocmd(
  { "BufRead", "BufNewFile" },
  { pattern = { "*.txt", "*.md", "*.tex" }, command = "setlocal spell" }
)

vim.api.nvim_create_autocmd(
  { "CursorHold" },
  { pattern = { "*" }, command = "lua vim.diagnostic.open_float(nil, {focusable = false})" }
)
