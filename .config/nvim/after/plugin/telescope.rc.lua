local status, telescope = pcall(require, "telescope")
if not status then
	return
end

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_module" },
		layout_config = {
			horizontal = { width = 0.9 },
		},
	},
	extensions = {},
})

telescope.load_extension("fzf")
telescope.load_extension("live_grep_args")
telescope.load_extension("project")
