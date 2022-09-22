local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require('go').setup({
    icons = {breakpoint = "", currentpos = '🏃'},
})
require("auto-save").setup()
require('dap-go').setup()

require('spellsitter').setup {
  -- Whether enabled, can be a list of filetypes, e.g. {'python', 'lua'}
  enable = true,
  debug = false
}
