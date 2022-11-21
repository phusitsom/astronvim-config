local status_ok, copilot = pcall(require, "copilot")
if not status_ok then return end

copilot.setup {
  cmp = {
    enabled = true,
    method = "getCompletionsCycling",
  },
  panel = {
    enabled = true,
    auto_refresh = true,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "<M-r>",
      open = "<M-CR>",
    },
  },

  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<M-l>",
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },

  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = "node", -- Node version must be < 18
  ft_disable = {},
  server_opts_overrides = {
    settings = {
      advanced = {
        inlineSuggestCount = 3, -- #completions for getCompletions
      },
    },
  },
}

require("copilot.suggestion").toggle_auto_trigger()
