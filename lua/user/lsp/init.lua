local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require('go').setup({
    icons = {breakpoint = "", currentpos = '🏃'}, 
})
require("auto-save").setup()
require('dap-go').setup()
