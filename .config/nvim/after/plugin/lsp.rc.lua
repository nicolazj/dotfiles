local status, tsserver = pcall(require, "typescript")
if not status then
	return
end
local status2, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status2 then
	return
end

local capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
tsserver.setup({
	disable_commands = false, -- prevent the plugin from creating Vim commands
	debug = false, -- enable debug logging for commands
	server = { -- pass options to lspconfig's setup method
		capabilities = capabilities,
		on_attach = function(client)
			client.resolved_capabilities.document_formatting = false
		end,
	},
})
require("lspconfig").sumneko_lua.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"},
      },
    },
  },
	capabilities = capabilities,
	on_attach = function(client)
		client.resolved_capabilities.document_formatting = false
	end,
})
