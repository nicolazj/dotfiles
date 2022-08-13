local status , telescope = pcall(require,'telescope')
if(not status)then return end;

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_module" },
		layout_config = {
			horizontal = { width = 0.9 },
			-- other layout configuration here
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = false,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

telescope.load_extension("fzf")
