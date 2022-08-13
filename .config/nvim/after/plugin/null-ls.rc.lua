local status, nullls = pcall(require, "null-ls")
if not status then
	return
end


nullls.setup({
	sources = {
		require("null-ls").builtins.formatting.prettier,
		require("null-ls").builtins.formatting.stylua,
	},
})
