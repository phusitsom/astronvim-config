-- CMP Source Priorities
-- modify here the priorities of default cmp sources
-- higher value == higher priority
-- The value can also be set to a boolean for disabling default sources:
-- false == disabled
-- true == 1000
return {
  copilot = 1000,
  nvim_lsp = 850,
  luasnip = 750,
  buffer = 500,
  path = 250,
}
