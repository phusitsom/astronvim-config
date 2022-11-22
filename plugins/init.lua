return {

  --THEME
  ["catppuccin/nvim"] = { as = "catppuccin", config = function() require("user.plugins.catppuccin").config() end },

  --MOVEMENT
  ["ggandor/leap.nvim"] = {
    config = function() require("leap").add_default_mappings() end,
  },

  --UTILS
  --outline
  ["simrat39/symbols-outline.nvim"] = {
    cmd = "SymbolsOutline",
    config = function() require("symbols-outline").setup {} end,
  },
  --treesitter
  ["nvim-treesitter/playground"] = {
    cmd = "TSHighlightCapturesUnderCursor",
  },

  -- surrround
  ["kylechui/nvim-surround"] = {
    after = "nvim-cmp",
    config = function() require("nvim-surround").setup() end,
  },

  --MISC
  --discord rich presence
  ["andweeb/presence.nvim"] = {
    config = function() require "user.plugins.presence" end,
  },
  --notification
  ["rcarriga/nvim-notify"] = {
    config = function() require("notify").setup { background_colour = "#000000" } end,
  },

  --LSP/CMP
  ["zbirenbaum/copilot.lua"] = {
    branch = "master",
    after = "nvim-lspconfig",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function() require "user.plugins.copilot" end, 100)
    end,
  },
  ["zbirenbaum/copilot-cmp"] = {
    after = { "copilot.lua", "nvim-cmp" },
    config = function()
      require("copilot_cmp").setup {
        clear_after_cursor = true,
        astronvim.add_user_cmp_source "copilot",
      }
    end,
  },

  ["folke/trouble.nvim"] = {
    cmd = { "Trouble", "TroubleToggle", "TroubleRefresh", "TroubleClose" },
    module = "trouble",
    config = function() require "user.plugins.trouble" end,
  },

  --LANGUAGE SPECIFIC
  --rust
  ["simrat39/rust-tools.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function()
      require("rust-tools").setup {
        tools = {
          autoSetHints = true,
          hover_with_actions = true,
          runnables = {
            use_telescope = true,
          },
          inlay_hints = {
            show_parameter_hints = true,
            parameter_hints_prefix = "<- ",
            other_hints_prefix = "=> ",
          },
        },
        server = astronvim.lsp.server_settings "rust-analyzer",
      }
    end,
  },
  ["saecki/crates.nvim"] = {
    event = { "BufRead Cargo.toml" },
    requires = { "plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "Crates",
        },
      }
      astronvim.add_user_cmp_source "crates"
    end,
  },
  --typescript
  ["jose-elias-alvarez/typescript.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function()
      require("typescript").setup {
        server = astronvim.lsp.server_settings "tsserver",
      }
    end,
  },
  --clang
  ["p00f/clangd_extensions.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function()
      require("clangd_extensions").setup {
        server = astronvim.lsp.server_settings "clangd",
      }
    end,
  },

  --markdown
  ["iamcco/markdown-preview.nvim"] = {
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
}
