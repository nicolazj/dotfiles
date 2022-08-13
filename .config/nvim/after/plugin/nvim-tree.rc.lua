local status, nvimtree = pcall(require, "nvim-tree")
if not status then
	return
end

nvimtree.setup({
	update_focused_file = {
		enable = true,
		update_root = false,
		ignore_list = {},
	},
})
