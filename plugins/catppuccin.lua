local M = {}

function M.config()
  local status_ok, catppuccin = pcall(require, "catppuccin")
  if not status_ok then return end

  catppuccin.setup {
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
      light = "latte",
      dark = "mocha",
    },
    transparent_background = true,
    term_colors = false,
    dim_inactive = {
      enabled = false,
      shade = "dark",
      percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
      comments = { "italic" },
      conditionals = { "italic" },
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      neotree = true,
      treesitter = true,
      telescope = true,
      notify = true,
      leap = true,
      which_key = true,
    },
  }
end

return M
